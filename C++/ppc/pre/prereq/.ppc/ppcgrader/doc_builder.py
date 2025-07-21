"""
Document Builder utilities to enable unified output generation for both terminal and web front-end

To achieve this, we generate output by building up a very simple DOM model, consisting of (styled) strings,
paragraphs, and lists. We don't allow nesting, i.e., each paragraph is a sequence of styled strings, each list
is a sequence of paragraphs, and a document is a sequence of paragraphs and lists.

In this file, we first define dataclasses for the output structure itself, and then some builder utilities
as a convenient means of building up a document. Finally, we provide  a set of functions for rendering the
result to html or terminal.
"""
from collections import defaultdict
from typing import List, Union, TYPE_CHECKING, Optional
from dataclasses import dataclass
from contextlib import contextmanager
from ppcgrader import quantity
import textwrap
if TYPE_CHECKING:
    from quantity import Quantity
    # markup is only needed for web output generation, and to specify type hints.
    # we *cannot* just import it unconditionally, because we don't want to require
    # that students have this package installed.
    from markupsafe import Markup

##############################################################################
#      Node definitions
##############################################################################


class NodeData:
    """
    Base class for all elements in the document.
    """
    pass


@dataclass
class StringNode(NodeData):
    """
    A `StringNode` is similar to an HTML span, representing a text and (potentially) an associated style.

    For HTML, this node could correspond to a true `<span>`, but also to `<em>` or `<strong>` elements.
    For terminal output, we map styles to ANSI codes.

    Multiple `StringNode`s can be concatenated together to a `TextNode`.
    """
    content: str
    style: str

    # Define addition operators, so we can concatenate these like actual strings
    def __add__(self, other: Union['StringNode', str]):
        if isinstance(other, StringNode):
            return TextNode(content=[self, other])
        else:
            return TextNode(content=[self, StringNode(other, '')])

    def __radd__(self, other: Union['StringNode', str]):
        if isinstance(other, StringNode):
            return TextNode(content=[other, self])
        else:
            return TextNode(content=[StringNode(other, ''), self])


@dataclass
class TextNode(NodeData):
    """
    A `TextNode` is similar to an HTML `<p>`, representing the concatenation of multiple pieces of text in potentially
    different styles.
    """
    content: List[StringNode]

    # Define addition operators, so we can concatenate these like actual strings
    def __add__(self, other: Union['StringNode', 'TextNode', str]):
        if isinstance(other, StringNode):
            return TextNode(content=self.content + [other])
        elif isinstance(other, TextNode):
            return TextNode(content=self.content + other.content)
        else:
            return TextNode(content=self.content +
                            [StringNode(other, style='')])

    def __radd__(self, other: Union['StringNode', str]):
        if isinstance(other, StringNode):
            return TextNode(content=[other] + self.content)
        elif isinstance(other, TextNode):
            return TextNode(content=other.content + self.content)
        else:
            return TextNode(content=[StringNode(other, '')] + self.content)


@dataclass
class ListNode(NodeData):
    """
    A `ItemList` node represents a (unordered) list of `TextNode` objects.
    """
    items: List[TextNode]
    style: str = ''


@dataclass
class MatrixNode(NodeData):
    """
    A `MatrixNode` represents a matrix of (possibly styled) entries, presented
    as a table.
    """
    content: List[List[TextNode]]
    style: List[List[str]]


@dataclass
class Document(NodeData):
    """
    A `Document` is a sequence of `TextNode' and `ListNode` objects.
    """
    content: List[Union[TextNode, ListNode]]


##############################################################################
#      Builder utility
##############################################################################


class Builder:
    """
    Base class for builder objects.

    Builders are expected to be used in (hierarchical) with statements, that reflect the
    structure of the document being built. The `group` function defines a context-manager
    that suppresses `QtyNotSetError`; this allows to group output steps together, and if
    one of them fails because of a missing quantity, the rest of the output still gets
    generated.

    While we try to unify web and terminal output, there are some ways in which they will
    be different. In particular, we often want the terminal to say the same thing as web,
    but with terser wording, so it works better with an 80-character line limit. Thus, the
    builder object is expected to specify whether it works in "web" or "term" `mode`, and
    the `alt` function allows to select between two corresponding text options.
    """
    def build(self) -> NodeData:
        raise NotImplementedError()

    @property
    def mode(self) -> str:
        """
        Gets the mode of this Builder, by default using the mode of its parent.
        """
        if hasattr(self, 'parent'):
            return self.parent.mode
        else:
            # if there is no parent attribute, derived classes need to implement this function
            raise NotImplementedError()

    def alt(self, *, web: str, term: str) -> str:
        """
        Returns the `web` argument in web mode, and the `term` argument in terminal mode.
        """
        if self.mode == "web":
            return web
        elif self.mode == "term":
            return term

    @contextmanager
    def group(self):
        try:
            yield
        except quantity.QtyNotSetError:
            pass


class TextBuilder(Builder):
    """
    Utility for building up a `TextNode` by concatenating strings, `StringNode`s, and other `TextNode`s.
    """
    def __init__(self, parent: Builder, content=None):
        self.parent = parent
        self.content = [] if content is None else content

    def __iadd__(self, other: Union[str, StringNode, TextNode]):
        if isinstance(other, str):
            self.content.append(StringNode(other, ''))
        elif isinstance(other, TextNode):
            self.content += other.content
        elif isinstance(other, StringNode):
            self.content.append(other)
        else:
            assert False
        return self

    def build(self) -> TextNode:
        return TextNode(content=self.content)

    @property
    def mode(self) -> str:
        return self.parent.mode


class ListBuilder(Builder):
    """
    Utility for building up a `ListNode`.

    Provides a context-manager function `item` for generating list items, and
    `add_item` for directly adding them to the builder.
    """
    def __init__(self, parent: Builder, style: str = ''):
        self.items = []
        self.parent = parent
        self.style = style

    @contextmanager
    def item(self):
        with self.group():
            builder = TextBuilder(parent=self)
            yield builder
            self.items.append(builder.build())

    def add_item(self, content: Union[str, TextNode]):
        if isinstance(content, str):
            self.items.append(TextNode([StringNode(content=content,
                                                   style="")]))
        elif isinstance(content, TextNode):
            self.items.append(content)
        else:
            pass
            #assert False

    def build(self) -> ListNode:
        return ListNode(self.items, self.style)


class MatrixBuilder(Builder):
    """
    Utility for building a matrix visualization.
    Individual entries can be set by accessing the corresponding
    `rows`.
    """
    def __init__(self, parent: Builder, rows: int, cols: int):
        self.entries = [[''] * cols for r in range(rows)]
        self.styles = [[''] * cols for r in range(rows)]
        self.parent = parent
        self.cols = cols
        self.rows = rows

    def entry(self, row: int, col: int, entry, style=''):
        """
        Set the contents of the specified cell.
        :param row: Row index of the cell.
        :param col: Column index of the cell.
        :param entry: Contents of the cell.
        :param style: Style of the cell.
        """
        self.entries[row][col] = entry
        self.styles[row][col] = style

    def build(self) -> MatrixNode:
        entries = []
        for r in self.entries:
            row = []
            for c in r:
                if isinstance(c, str):
                    row.append(TextNode([StringNode(content=c, style="")]))
                elif isinstance(c, TextNode):
                    row.append(c)
            entries.append(row)

        return MatrixNode(entries, self.styles)


class DocumentBuilder(Builder):
    """
    Utility for building up a `Document`.

    Provides context managers for creating `text` and `list` sub-builders.
    """
    def __init__(self, mode: str):
        self.content = []
        self._mode = mode

    @contextmanager
    def list(self, style=''):
        builder = ListBuilder(self, style=style)
        yield builder
        self.content.append(builder.build())

    @contextmanager
    def text(self):
        builder = TextBuilder(self)
        yield builder
        self.content.append(builder.build())

    @contextmanager
    def matrix(self, rows: int, cols: int):
        builder = MatrixBuilder(self, rows=rows, cols=cols)
        yield builder
        self.content.append(builder.build())

    def build(self) -> Document:
        return Document(self.content)

    @property
    def mode(self) -> str:
        return self._mode


def em(text: str):
    """
    Create a `StringNode` with "em" style.
    """
    return StringNode(str(text), style="em")


def strong(text: "Union[str, Quantity]"):
    """
    Create a `StringNode` with "strong" style.
    """
    return StringNode(str(text), style="strong")


##############################################################################
#      Rendering definitions
##############################################################################


def _ensure_dict(mapping: Union[str, dict]) -> dict:
    if isinstance(mapping, str):
        return defaultdict(lambda: mapping)
    return mapping


class TerminalPrinter:
    """
    TerminalPrinter specifies how text styles are represented on the terminal,
    and how lists are formatted.
    """
    def __init__(self, color: bool):
        self.color = color
        self._format = {}

        if color:
            bold, blue = '\033[1m', '\033[34m'
            bold_red, bold_blue = '\033[31;1m', '\033[34;1m'
            reset = '\033[0m'
            self._format["strong"] = (blue, reset)
            self._format["em"] = (bold, reset)
            self._format["correct"] = ('', '')
            self._format["slightlywrong"] = (bold_blue, reset)
            self._format["verywrong"] = (bold_red, reset)
        else:
            self._format["strong"] = ('', '')
            self._format["em"] = ('', '')
            self._format["correct"] = (' ', ' ')
            self._format["slightlywrong"] = ('(', ')')
            self._format["verywrong"] = ('[', ']')

        self._list_item = _ensure_dict(" · ")
        self._list_indent = _ensure_dict("")
        self._list_sep = _ensure_dict("\n")
        self._list_sep["compact"] = ""

    def set_list_style(self,
                       style: str,
                       *,
                       item: Optional[str] = None,
                       indent: Optional[str] = None,
                       sep: Optional[str] = None):
        """
        Defines how a list of a certain style will be formatted.
        :param style: Name of the style to define
        :param item: Introductory string before each list item.
        :param indent: Indentation for each list item.
        :param sep: Separator between list items.
        The formatting arguments are optional; and argument that is omitted will use its default value.
        """
        if item is not None:
            self._list_item[style] = item
        if indent is not None:
            self._list_indent[style] = indent
        if sep is not None:
            self._list_sep[style] = sep

    def set_format(self, style: str, pre: str, post: str):
        """
        Sets up formatting for the given style.
        :param style: Name of the style to define
        :param pre: Prefix, to be printed before the formatted string
        :param post: Suffix, to be printed after the formatted string
        """
        self._format[style] = (pre, post)

    def format_string(self, text: str, style: str) -> str:
        """
        Format `text` according to `style` as specified in self.format.
        """
        beg, end = self._format.get(style, ("", ""))
        return f"{beg}{text}{end}"

    def format_list_item(self, item: str, style: str) -> str:
        """
        Format a single list item of the given text.
        """
        text = f"{self._list_item[style]}{item}"
        lil = len(self._list_item[style])
        text = textwrap.indent(text, ' ' * lil)
        text = text[lil:]
        return f"{text}\n{self._list_sep[style]}"

    def format_table_cell(self, content: str, style: str):
        """
        Format a single table/matrix cell
        """
        # TODO make cell separation and width configurable
        return self.format_string(f" {content:>11}", style)


def _generate_node_term(node: NodeData, printer: TerminalPrinter) -> str:
    """
    Generate a terminal string representation for the given node,
    recursively stringifying sub-nodes.
    """
    if isinstance(node, StringNode):
        return printer.format_string(node.content, node.style)
    elif isinstance(node, TextNode):
        result = ""
        for s in node.content:
            result += _generate_node_term(s, printer)
        return result
    elif isinstance(node, ListNode):
        result = ""
        for item in node.items:
            item_text = _generate_node_term(item, printer)
            result += printer.format_list_item(item_text.strip(), node.style)
        return textwrap.indent(result, printer._list_indent[node.style])
    elif isinstance(node, MatrixNode):
        rows = len(node.content)
        cols = len(node.content[0])
        result = ""
        for i in range(rows):
            for j in range(cols):
                style = node.style[i][j]
                content = _generate_node_term(node.content[i][j], printer)
                result += printer.format_table_cell(content, style)
            result += '\n'
        result += '\n'
        return result
    elif isinstance(node, Document):
        result = ""
        for item in node.content:
            item_text = _generate_node_term(item, printer)
            result += f"{item_text}\n"
        return result.rstrip()


def generate_term(doc: Document, printer: TerminalPrinter) -> str:
    """
    Generate terminal string for the document.
    """
    return _generate_node_term(doc, printer)


def _generate_node_html(node: NodeData) -> "Markup":
    """
    Generate a web string representation for the given node,
    recursively stringifying sub-nodes.
    """
    from markupsafe import escape, Markup

    if isinstance(node, StringNode):
        safe = escape(node.content)
        if node.style == "":
            return safe
        elif node.style in ["strong", "em"]:
            return Markup(f"<{node.style}>{safe}</{node.style}>")
        else:
            return Markup(f'<span class="{node.style}">{safe}</span>')
    elif isinstance(node, TextNode):
        result = Markup("")
        for s in node.content:
            result += _generate_node_html(s)
        return result
    elif isinstance(node, ListNode):
        result = ""
        for item in node.items:
            item_text = _generate_node_html(item)
            result += Markup("<li>") + item_text + Markup("</li>\n")
        if node.style == '':
            return Markup("<ul>") + result + Markup("</ul>")
        else:
            return Markup(f'<ul class="{node.style}">') + result + Markup(
                "</ul>")
    elif isinstance(node, MatrixNode):
        result = Markup(
            '<div class="matrixwrap"><div class="matrix"><table>\n')
        rows = len(node.content)
        cols = len(node.content[0])
        result += Markup("<tr><td></td>")
        for j in range(cols):
            result += Markup(f'<td class="colindex">{j}</td>')
        result += Markup("</tr>\n")

        for i in range(rows):
            result += Markup(f'<tr><td class="rowindex">{i}</td>')
            for j in range(cols):
                style = Markup.escape(node.style[i][j])
                result += Markup(f'<td class="element {style}">')
                result += _generate_node_html(node.content[i][j])
                result += Markup('</td>')
            result += Markup('</tr>\n')
        result += Markup('</table></div></div>')
        return result
    elif isinstance(node, Document):
        result = Markup("")
        for item in node.content:
            item_text = _generate_node_html(item)
            result += item_text + "\n"
        if result.endswith("\n\n"):
            return result[:-1]
        return result


def generate_html(doc: Document):
    """
    Generate web string for the document.
    """
    return _generate_node_html(doc)
