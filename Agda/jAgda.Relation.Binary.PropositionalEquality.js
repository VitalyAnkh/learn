var agdaRTS = require("agda-rts");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Function_Equality = require("jAgda.Function.Equality");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Bundles");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Construct_Trivial = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Structures");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");
var z_jAgda_Relation_Nullary_Decidable_Core = require("jAgda.Relation.Nullary.Decidable.Core");

exports["subst₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return function (x12) {
                            return x12;
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["isEquivalence"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x2) {
        return agdaRTS.primIntegerFromString("0");
      })(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
    };
  };
exports["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["record"](exports["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(x2);
      };
    };
  };
exports["isPreorder"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](exports["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(function (x2) {
        return function (x3) {
          return function (x4) {
            return x4;
          };
        };
      })(agdaRTS.primIntegerFromString("0"));
    };
  };
exports["setoid"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
    };
  };
exports["decSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Bundles["DecSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["preorder"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Binary_Bundles["Preorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isPreorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
    };
  };
exports["_→-setoid_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Function_Equality["≡-setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Indexed_Heterogeneous_Construct_Trivial["indexedSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))));
        };
      };
    };
  };
exports[":→-to-Π"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Function_Equality["Π"]["record"](x5)(function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["refl"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["isEquivalence"](x4))(x6)(x5(x6));
                  };
                };
              });
            };
          };
        };
      };
    };
  };
exports["→-to-⟶"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports[":→-to-Π"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Indexed_Heterogeneous_Construct_Trivial["_NameId 18 7603768647796398218"]["isIndexedEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x4))));
          };
        };
      };
    };
  };
exports["Reveal_·_is_"] = {};
exports["Reveal_·_is_"]["[_]"] = function (x0) {
    return {
      "[_]": function (x1) {
        return x1["[_]"](x0);
      },
      "eq": x0
    };
  };
exports["_NameId 388 4418159132848364217"] = {};
exports["_NameId 388 4418159132848364217"]["≢-≟-identity"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Nullary_Decidable_Core["dec-no"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2(x3)(x4))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["record"](exports["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
      };
    };
  };
exports["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(exports["isMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
      };
    };
  };
exports["cong-app"] = agdaRTS.primIntegerFromString("0");
exports["cong₂"] = agdaRTS.primIntegerFromString("0");
exports["_≗_"] = agdaRTS.primIntegerFromString("0");
exports["Reveal_·_is_"]["eq"] = agdaRTS.primIntegerFromString("0");
exports["inspect"] = agdaRTS.primIntegerFromString("0");
exports["isPropositional"] = agdaRTS.primIntegerFromString("0");
exports["trans-injectiveˡ"] = agdaRTS.primIntegerFromString("0");
exports["trans-injectiveʳ"] = agdaRTS.primIntegerFromString("0");
exports["cong-id"] = agdaRTS.primIntegerFromString("0");
exports["cong-∘"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 244 4418159132848364217"] = {};
exports["_NameId 244 4418159132848364217"]["subst-injective"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 244 4418159132848364217"]["subst-subst"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 244 4418159132848364217"]["subst-subst-sym"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 244 4418159132848364217"]["subst-sym-subst"] = agdaRTS.primIntegerFromString("0");
exports["subst-∘"] = agdaRTS.primIntegerFromString("0");
exports["subst-application"] = agdaRTS.primIntegerFromString("0");
exports["naturality"] = agdaRTS.primIntegerFromString("0");
exports["cong-≡id"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 376 4418159132848364217"] = {};
exports["_NameId 376 4418159132848364217"]["fx≡x"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 376 4418159132848364217"]["f²x≡x"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 388 4418159132848364217"]["≡-≟-identity"] = agdaRTS.primIntegerFromString("0");
exports["Extensionality"] = agdaRTS.primIntegerFromString("0");
exports["extensionality-for-lower-levels"] = agdaRTS.primIntegerFromString("0");
exports["∀-extensionality"] = agdaRTS.primIntegerFromString("0");

