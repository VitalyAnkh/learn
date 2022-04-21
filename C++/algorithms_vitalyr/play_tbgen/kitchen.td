class Unit<bit imperial, string text> {
  string Text = text;
  bit Imperial = imperial;
}

def gram_unit : Unit<false, "g">;
def tbsp_unit : Unit<true, "tbsp">;
