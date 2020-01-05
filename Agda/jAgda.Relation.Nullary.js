var agdaRTS = require("agda-rts");
var z_jAgda_Data_Empty_Irrelevant = require("jAgda.Data.Empty.Irrelevant");

exports["Reflects"] = {};
exports["Reflects"]["ofʸ"] = function (x0) {
    return function (x1) {
      return x1["ofʸ"](x0);
    };
  };
exports["Reflects"]["ofⁿ"] = function (x0) {
    return function (x1) {
      return x1["ofⁿ"](x0);
    };
  };
exports["Dec"] = {};
exports["Dec"]["does"] = function (x0) {
    return x0["_because_"]({
      "_because_": function (x1, x2) {
        return x1;
      }
    });
  };
exports["Dec"]["proof"] = function (x0) {
    return x0["_because_"]({
      "_because_": function (x1, x2) {
        return x2;
      }
    });
  };
exports["Dec"]["_because_"] = function (x0) {
    return function (x1) {
      return {
        "_because_": function (x2) {
          return x2["_because_"](x0, x1);
        },
        "does": x0,
        "proof": x1
      };
    };
  };
exports["recompute"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2["_because_"]({
            "_because_": function (x4, x5) {
              return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x4, {
                "false": function () {
                  return (agdaRTS.primSeq)(x5, z_jAgda_Data_Empty_Irrelevant["⊥-elim"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
                },
                "true": function () {
                  return x5({
                    "ofʸ": function (x6) {
                      return x6;
                    }
                  });
                }
              });
            }
          });
        };
      };
    };
  };
exports["¬_"] = agdaRTS.primIntegerFromString("0");
exports["Irrelevant"] = agdaRTS.primIntegerFromString("0");

