var agdaRTS = require("agda-rts");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");

exports["of"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x2, {
            "false": function () {
              return z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0"));
            },
            "true": function () {
              return z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](x3);
            }
          });
        };
      };
    };
  };
exports["invert"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3({
            "ofʸ": function (x4) {
              return x4;
            },
            "ofⁿ": function (x4) {
              return agdaRTS.primIntegerFromString("0");
            }
          });
        };
      };
    };
  };
exports["det"] = agdaRTS.primIntegerFromString("0");

