var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Data_Product = require("jAgda.Data.Product");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["invIsPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x0)))(function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x0))(x2)(x1)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x0)))(x1)(x2)(x3));
        };
      };
    })(function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x0))(x3)(x2)(x1)(x5)(x4);
            };
          };
        };
      };
    });
  };
exports["invPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Preorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["invIsPreorder"](x3));
        };
      };
    };
  };
exports["InducedEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x4) {
            return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x3))(x4))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x3))(x4));
          })(function (x4) {
            return function (x5) {
              return z_jAgda_Data_Product["swap"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          })(function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Data_Product["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x3))(x4)(x5)(x6))(function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x3))(x6)(x5)(x4)(x10)(x9);
                      };
                    };
                  };
                });
              };
            };
          }));
        };
      };
    };
  };

