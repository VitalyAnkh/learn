var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Reasoning_Base_Partial = require("jAgda.Relation.Binary.Reasoning.Base.Partial");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x7)(x4(x7)(x7))(x4(x7)(x8))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x4(x7)(x7))(x7)(x6(x7)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x4(x7)(x7))(x4(x7)(x8))(x4(x7)(x8))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](x5)(x7)(x7)(x7)(x8)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x7))(x9))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x4(x7)(x8))))));
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
exports["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x5(x4(x7)(x7))(x7)(x6(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["antisym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x7)(x4(x7)(x8))(x8)(x9)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x4(x7)(x8))(x4(x8)(x7))(x8)(x6(x7)(x8))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x4(x8)(x7))(x8)(x8)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](x5)(x8)(x4(x8)(x7))(x10))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](x5)(x8))))));
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
exports["total"] = function (x0) {
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
                        return x7(x9)(x10)({
                          "inj₁": function (x11) {
                            return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](x5(x4(x9)(x10))(x9)(x11));
                          },
                          "inj₂": function (x11) {
                            return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](x5(x4(x10)(x9))(x10)(x6(x4(x10)(x9))(x4(x9)(x10))(x10)(x8(x10)(x9))(x11)));
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
      };
    };
  };
exports["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))))))(x6)(x4(x6)(x7))(x4(x6)(x8))(x9)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))))))(x4(x6)(x7))(x4(x6)(x4(x7)(x8)))(x4(x6)(x8))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))(x6)(x6)(x7)(x4(x7)(x8))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5)))(x6))(x10))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))))))(x4(x6)(x4(x7)(x8)))(x4(x4(x6)(x7))(x8))(x4(x6)(x8))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5)))(x4(x4(x6)(x7))(x8))(x4(x6)(x4(x7)(x8)))(z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](x5)(x6)(x7)(x8)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))))))(x4(x4(x6)(x7))(x8))(x4(x6)(x8))(x4(x6)(x8))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))(x4(x6)(x7))(x6)(x8)(x8)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5)))(x6)(x4(x6)(x7))(x9))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5)))(x8)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](x5))))(x4(x6)(x8))))))));
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
exports["respʳ"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x6)(x4(x6)(x7))(x4(x6)(x8))(x10)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x4(x6)(x7))(x4(x6)(x8))(x4(x6)(x8))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](x5)(x6)(x6)(x7)(x8)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x6))(x9))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x4(x6)(x8))))));
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
exports["respˡ"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x8)(x7)(x4(x8)(x6))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x7)(x8)(x9))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x7)(x4(x7)(x6))(x4(x8)(x6))(x10)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))))(x4(x7)(x6))(x4(x8)(x6))(x4(x8)(x6))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](x5)(x7)(x8)(x6)(x6)(x9)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x6)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](x5))(x4(x8)(x6)))))));
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
exports["resp₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["respʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5))(exports["respˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["dec"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x5(x6)(x4(x6)(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 1744 10634464802063786067"] = {};
exports["_NameId 1744 10634464802063786067"]["x∙y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x6)(x7))(x4(x4(x6)(x6))(x7))(x4(x4(x6)(x7))(x6))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))(x6)(x4(x6)(x6))(x7)(x7)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(x4(x6)(x6))(x6)(z_jAgda_Algebra_Structures["IsBand"]["idem"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))(x6)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(x7)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x4(x6)(x6))(x7))(x4(x6)(x4(x6)(x7)))(x4(x4(x6)(x7))(x6))(z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))(x6)(x6)(x7))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x6)(x4(x6)(x7)))(x4(x4(x6)(x7))(x6))(x4(x4(x6)(x7))(x6))(z_jAgda_Algebra_Structures["IsSemilattice"]["comm"](x5)(x6)(x4(x6)(x7)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))(x4(x4(x6)(x7))(x6)))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 1744 10634464802063786067"]["x∙y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x6)(x7))(x4(x6)(x4(x7)(x7)))(x4(x4(x6)(x7))(x7))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))(x6)(x6)(x7)(x4(x7)(x7))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(x6))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(x4(x7)(x7))(x7)(z_jAgda_Algebra_Structures["IsBand"]["idem"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))(x7))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x6)(x4(x7)(x7)))(x4(x4(x6)(x7))(x7))(x4(x4(x6)(x7))(x7))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(x4(x4(x6)(x7))(x7))(x4(x6)(x4(x7)(x7)))(z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))(x6)(x7)(x7)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))(x4(x4(x6)(x7))(x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 1744 10634464802063786067"]["∙-presʳ-≤"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x8)(x4(x8)(x7))(x4(x8)(x4(x6)(x7)))(x10)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x8)(x7))(x4(x4(x8)(x6))(x7))(x4(x8)(x4(x6)(x7)))(z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))(x8)(x4(x8)(x6))(x7)(x7)(x9)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(x7)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))))(x4(x4(x8)(x6))(x7))(x4(x8)(x4(x6)(x7)))(x4(x8)(x4(x6)(x7)))(z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))(x8)(x6)(x7))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))(x4(x8)(x4(x6)(x7))))))));
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
exports["_NameId 1744 10634464802063786067"]["infimum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["_NameId 1744 10634464802063786067"]["x∙y≤x"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(x7))(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["_NameId 1744 10634464802063786067"]["x∙y≤y"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(x7))(exports["_NameId 1744 10634464802063786067"]["∙-presʳ-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["isPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](x5))))(exports["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](x5)))(z_jAgda_Algebra_Structures["IsBand"]["idem"](x5)))(exports["trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["isPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["record"](exports["isPreorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))(exports["antisym"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5)))))(z_jAgda_Algebra_Structures["IsSemilattice"]["comm"](x5)));
            };
          };
        };
      };
    };
  };
exports["isDecPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["record"](exports["isPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5))(x6)(exports["dec"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["isTotalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["record"](exports["isPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5))(exports["total"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](x5))))))(x6)(z_jAgda_Algebra_Structures["IsSemilattice"]["comm"](x5)));
              };
            };
          };
        };
      };
    };
  };
exports["isDecTotalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["record"](exports["isTotalOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(x7)(exports["dec"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Bundles["Preorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isPreorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["decPoset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Bundles["DecPoset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isDecPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["totalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Bundles["TotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isTotalOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["decTotalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Bundles["DecTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["isDecTotalOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 20 10634464802063786067"] = {};
exports["_NameId 20 10634464802063786067"]["Commutative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 20 10634464802063786067"]["Idempotent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 20 10634464802063786067"]["Selective"] = agdaRTS.primIntegerFromString("0");
exports["_≤_"] = agdaRTS.primIntegerFromString("0");

