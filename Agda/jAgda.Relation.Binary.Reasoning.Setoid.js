var agdaRTS = require("agda-rts");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Reasoning_Base_Partial = require("jAgda.Relation.Binary.Reasoning.Base.Partial");
var z_jAgda_Relation_Binary_Reasoning_PartialSetoid = require("jAgda.Relation.Binary.Reasoning.PartialSetoid");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["_NameId 36 790889049202475321"] = {};
exports["_NameId 36 790889049202475321"]["_IsRelatedTo_"] = {};
exports["_NameId 36 790889049202475321"]["_∎⟨_⟩"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](x4);
          };
        };
      };
    };
  };
exports["_NameId 36 790889049202475321"]["_≈˘⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Reasoning_PartialSetoid["_≈˘⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 36 790889049202475321"]["_∼⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["_NameId 36 790889049202475321"]["_≡˘⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x7;
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 36 790889049202475321"]["_≡⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x7;
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 36 790889049202475321"]["_≡⟨⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x5;
            };
          };
        };
      };
    };
  };
exports["_NameId 36 790889049202475321"]["relTo"] = function (x0) {
    return function (x1) {
      return x1["relTo"](x0);
    };
  };
exports["_NameId 36 790889049202475321"]["_IsRelatedTo_"]["relTo"] = function (x0) {
    return function (x1) {
      return x1["relTo"](x0);
    };
  };
exports["_NameId 60 790889049202475321"] = {};
exports["_NameId 60 790889049202475321"]["_∎"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x2))(x3));
        };
      };
    };
  };
exports["_NameId 36 790889049202475321"]["begin_"] = z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"];

