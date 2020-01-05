var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Data_Bool_Base = require("jAgda.Data.Bool.Base");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");

exports["_×-reflects_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x6({
                    "ofʸ": function (x8) {
                      return x7({
                        "ofʸ": function (x9) {
                          return z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x8)(x9));
                        },
                        "ofⁿ": function (x9) {
                          return z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0"));
                        }
                      });
                    },
                    "ofⁿ": function (x8) {
                      return z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0"));
                    }
                  });
                };
              };
            };
          };
        };
      };
    };
  };
exports["_×-dec_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Data_Bool_Base["_∧_"](z_jAgda_Relation_Nullary["Dec"]["does"](x4))(z_jAgda_Relation_Nullary["Dec"]["does"](x5)))(exports["_×-reflects_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Nullary["Dec"]["proof"](x4))(z_jAgda_Relation_Nullary["Dec"]["proof"](x5)));
            };
          };
        };
      };
    };
  };

