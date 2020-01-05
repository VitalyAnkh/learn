var agdaRTS = require("agda-rts");

exports["RawFunctor"] = {};
exports["RawFunctor"]["record"] = function (x0) {
    return {
      "_<$>_": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
    };
  };
exports["RawFunctor"]["_<$>_"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["RawFunctor"]["_<$_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawFunctor"]["_<$>_"](x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x8) {
                    return x6;
                  })(x7);
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawFunctor"]["_<&>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawFunctor"]["_<$>_"](x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"] = {};
exports["Morphism"]["op"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["Morphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "op": x0,
        "op-<$>": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["Morphism"]["op-<$>"] = agdaRTS.primIntegerFromString("0");

