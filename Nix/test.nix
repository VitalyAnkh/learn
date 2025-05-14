{
  a,
  b ? 3,
  trueMsg ? "yes",
  falseMsg ? "false",
}:
if a > b then builtins.trace trueMsg true else builtins.trace falseMsg false
