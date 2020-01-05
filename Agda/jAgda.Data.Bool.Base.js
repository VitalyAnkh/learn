var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");

exports["_≤_"] = {};
exports["_<_"] = {};
exports["_≤_"]["f≤t"] = function (x0) {
    return x0["f≤t"]();
  };
exports["_≤_"]["b≤b"] = function (x0) {
    return function (x1) {
      return x1["b≤b"](x0);
    };
  };
exports["_<_"]["f<t"] = function (x0) {
    return x0["f<t"]();
  };
exports["not"] = function (x0) {
    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return z_jAgda_Agda_Builtin_Bool["Bool"]["true"];
      },
      "true": function () {
        return z_jAgda_Agda_Builtin_Bool["Bool"]["false"];
      }
    });
  };
exports["_∧_"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return x0;
        },
        "true": function () {
          return x1;
        }
      });
    };
  };
exports["_∨_"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return x1;
        },
        "true": function () {
          return x0;
        }
      });
    };
  };
exports["_xor_"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return x1;
        },
        "true": function () {
          return exports["not"](x1);
        }
      });
    };
  };
exports["if_then_else_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x2, {
              "false": function () {
                return x4;
              },
              "true": function () {
                return x3;
              }
            });
          };
        };
      };
    };
  };
exports["T"] = agdaRTS.primIntegerFromString("0");

