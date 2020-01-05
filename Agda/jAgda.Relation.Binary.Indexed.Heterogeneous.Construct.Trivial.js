var agdaRTS = require("agda-rts");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Bundles");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Structures");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["_NameId 18 7603768647796398218"] = {};
exports["_NameId 18 7603768647796398218"]["isIndexedEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["record"](function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](x6);
                })(function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](x6);
                  };
                })(function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](x6);
                    };
                  };
                });
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 18 7603768647796398218"]["isIndexedPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["record"](exports["_NameId 18 7603768647796398218"]["isIndexedEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](x8)))(function (x9) {
                      return function (x10) {
                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](x8);
                      };
                    })(function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](x8);
                        };
                      };
                    });
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["indexedSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["_NameId 18 7603768647796398218"]["isIndexedEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x4)));
          };
        };
      };
    };
  };
exports["indexedPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedPreorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["_NameId 18 7603768647796398218"]["isIndexedPreorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Preorder"]["isPreorder"](x5)));
            };
          };
        };
      };
    };
  };
exports["_NameId 18 7603768647796398218"]["Aᵢ"] = agdaRTS.primIntegerFromString("0");

