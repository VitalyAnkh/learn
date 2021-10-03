import java.util.List;
import java.util.ArrayList;

import static java.util.Arrays.asList;

// Main class definitions for the coursework.
// Please do not modify the signature of the following classes!

class Typecheck {
    public static String tc(Exp p) throws TCException {
        if (p instanceof IntLiteral) {
            return "Int";
        } else if (p instanceof Variable) {
            return "Int";
        } else if (p instanceof Assign) {
            if (!tc(((Assign) p).e).equals("Int")) {
                throw new TCException("the type of the right expression of the assignment is not Int!");
            } else {
                return "Unit";
            }
        } else if (p instanceof Binexp) {
            if (!tc(((Binexp) p).l).equals("Int")) {
                throw new TCException("The left expression of Binexp is not an Int!");
            } else if (!tc(((Binexp) p).r).equals("Int")) {
                throw new TCException("The right expression of Binexp is not an Int!");
            } else return "Int";
        } else if (p instanceof Block) {
            return tc((((Block) p)._expl).get(((Block) p)._expl.size() - 1));
        } else if (p instanceof If) {
            If p_temp = ((If) p);
            if (!tc(p_temp.l).equals("Int") || !tc(p_temp.r).equals("Int")) {
                throw new TCException("The type of variables in Comp is not Int!");
            } else if (tc(p_temp.thenBody) != tc(p_temp.elseBody)) {
                throw new TCException("The types of the two branches does not match!");
            } else return tc(p_temp.thenBody);
        } else if (p instanceof RepeatUntil) {
            RepeatUntil p_temp = (RepeatUntil) p;
            if (!tc(p_temp.l).equals("Int") || !tc(p_temp.r).equals("Int")) {
                throw new TCException("The type of variables in Comp is not Int!");
            } else if (!tc(p_temp.body).equals("Unit")) {
                throw new TCException("The type of body in RepeatUntil is not Unit!");
            } else return "Unit";
        } else if (p instanceof While) {
            While p_temp = (While) p;
            if (!tc(p_temp.l).equals("Int") || !tc(p_temp.r).equals("Int")) {
                throw new TCException("The type of variables in Comp is not Int!");
            } else if (!tc(p_temp.body).equals("Unit")) {
                throw new TCException("The type of body in RepeatUntil is not Unit!");
            } else return "Unit";
        }
        else return "Bool";
    }
}

class TCException extends Exception {
    public String msg;

    public TCException(String _msg) {
        msg = _msg;
    }
}

// Interface and class definitions which may help to define
// the type-checker.

interface ASTType {
}

class UnitType implements ASTType {
}

class IntType implements ASTType {
}

class BoolType implements ASTType {
}

// AST class definitions, similar to Task 3 in the Autumn.

abstract class Exp {
}

class IntLiteral extends Exp {
    public int n;

    IntLiteral(int _n) {
        n = _n;
    }
}

class Variable extends Exp {
}

class If extends Exp {
    public Exp l;
    public Comp comp;
    public Exp r;
    public Exp thenBody;
    public Exp elseBody;

    public If(Exp _l, Comp _comp, Exp _r, Exp _thenBody, Exp _elseBody) {
        l = _l;
        comp = _comp;
        r = _r;
        thenBody = _thenBody;
        elseBody = _elseBody;
    }
}

class Binexp extends Exp {
    public Exp l;
    public Binop binop;
    public Exp r;

    public Binexp(Exp _l, Binop _binop, Exp _r) {
        l = _l;
        binop = _binop;
        r = _r;
    }
}

class While extends Exp {
    public Exp l;
    public Comp comp;
    public Exp r;
    public Exp body;

    public While(Exp _l, Comp _comp, Exp _r, Exp _body) {
        l = _l;
        comp = _comp;
        r = _r;
        body = _body;
    }
}

class RepeatUntil extends Exp {
    public Exp body;
    public Exp l;
    public Comp comp;
    public Exp r;

    public RepeatUntil(Exp _body, Exp _l, Comp _comp, Exp _r) {
        body = _body;
        l = _l;
        comp = _comp;
        r = _r;
    }
}

class Assign extends Exp {
    public int x;
    public Exp e;

    public Assign(int _x, Exp _e) {
        assert (_x > 0);
        x = _x;
        e = _e;
    }
}

class Block extends Exp {
    public List<Exp> _expl;

    public Block(List<Exp> expls) {
        _expl = expls;
    }
}

abstract class Comp {
}

class Less extends Comp {
    public Less() {
    }
}

class LessEq extends Comp {
    public LessEq() {
    }
}

class Equals extends Comp {
    public Equals() {
    }
}

class Greater extends Comp {
    public Greater() {
    }
}

class GreaterEq extends Comp {
    public GreaterEq() {
    }
}

abstract class Binop {
}

class Plus extends Binop {
    public Plus() {
    }
}

class Minus extends Binop {
    public Minus() {
    }
}

class Times extends Binop {
    public Times() {
    }
}

class Div extends Binop {
    public Div() {
    }
}