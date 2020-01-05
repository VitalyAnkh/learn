var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Reasoning_Base_Partial = require("jAgda.Relation.Binary.Reasoning.Base.Partial");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["_NameId 42 12317305610259864193"] = {};
exports["_NameId 42 12317305610259864193"]["F"] = {};
exports["_NameId 42 12317305610259864193"]["F"]["_∙_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Semigroup"]["_∙_"](x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"] = {};
exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["_NameId 160 12317305610259864193"] = {};
exports["_NameId 160 12317305610259864193"]["F"] = {};
exports["_NameId 160 12317305610259864193"]["F"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 160 12317305610259864193"]["F"]["ε"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Monoid"]["ε"](x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "∙-homo": x1,
        "⟦⟧-cong": x0
      };
    };
  };
exports["_NameId 160 12317305610259864193"]["T"] = {};
exports["_NameId 160 12317305610259864193"]["T"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"] = {};
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["ε-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["_NameId 302 12317305610259864193"] = {};
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["_NameId 302 12317305610259864193"]["∙-homo"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](x0));
  };
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["_NameId 302 12317305610259864193"]["⟦⟧-cong"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](x0));
  };
exports["_NameId 312 12317305610259864193"] = {};
exports["_NameId 312 12317305610259864193"]["F"] = {};
exports["_NameId 312 12317305610259864193"]["F"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 312 12317305610259864193"]["T"] = {};
exports["_NameId 312 12317305610259864193"]["T"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"] = {};
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["mn-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["_NameId 466 12317305610259864193"] = {};
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["_NameId 466 12317305610259864193"]["sm-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["mn-homo"](x0));
  };
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["_NameId 466 12317305610259864193"]["ε-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["ε-homo"](exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["mn-homo"](x0));
  };
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["_NameId 466 12317305610259864193"]["∙-homo"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["mn-homo"](x0)));
  };
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["_NameId 466 12317305610259864193"]["⟦⟧-cong"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["mn-homo"](x0)));
  };
exports["_NameId 480 12317305610259864193"] = {};
exports["_NameId 480 12317305610259864193"]["F"] = {};
exports["_NameId 480 12317305610259864193"]["F"]["commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 480 12317305610259864193"]["F"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
            };
          };
        };
      };
    };
  };
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "sm-homo": x0,
        "ε-homo": x1
      };
    };
  };
exports["_NameId 480 12317305610259864193"]["T"] = {};
exports["_NameId 480 12317305610259864193"]["T"]["commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 480 12317305610259864193"]["T"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5));
            };
          };
        };
      };
    };
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"] = {};
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["mn-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["_NameId 646 12317305610259864193"] = {};
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["_NameId 646 12317305610259864193"]["sm-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["mn-homo"](x0));
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["_NameId 646 12317305610259864193"]["ε-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["ε-homo"](exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["mn-homo"](x0));
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["_NameId 646 12317305610259864193"]["∙-homo"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["mn-homo"](x0)));
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["_NameId 646 12317305610259864193"]["⟦⟧-cong"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["mn-homo"](x0)));
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["isCommutativeMonoidMorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["record"](exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["mn-homo"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 662 12317305610259864193"] = {};
exports["_NameId 662 12317305610259864193"]["F"] = {};
exports["_NameId 662 12317305610259864193"]["F"]["_⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 662 12317305610259864193"]["F"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 662 12317305610259864193"]["T"] = {};
exports["_NameId 662 12317305610259864193"]["T"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"] = {};
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["_NameId 844 12317305610259864193"] = {};
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["_NameId 844 12317305610259864193"]["sm-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x0));
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["_NameId 844 12317305610259864193"]["ε-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["ε-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x0));
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["_NameId 844 12317305610259864193"]["∙-homo"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x0)));
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["_NameId 844 12317305610259864193"]["⟦⟧-cong"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x0)));
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["⁻¹-homo"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Algebra_Structures["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Group"]["_∙_"](x5))(z_jAgda_Algebra_Bundles["Group"]["ε"](x5))(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x5))(z_jAgda_Algebra_Bundles["Group"]["isGroup"](x5))(x6(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8)))(x6(x8))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Bundles["Group"]["isGroup"](x5)))))))))(z_jAgda_Algebra_Bundles["Group"]["_∙_"](x5)(x6(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8)))(x6(x8)))(x6(z_jAgda_Algebra_Bundles["Semigroup"]["_∙_"](z_jAgda_Algebra_Bundles["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)))(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8))(x8)))(z_jAgda_Algebra_Bundles["Group"]["ε"](x5))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Bundles["Group"]["isGroup"](x5))))))(x6(z_jAgda_Algebra_Bundles["Semigroup"]["_∙_"](z_jAgda_Algebra_Bundles["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)))(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8))(x8)))(z_jAgda_Algebra_Bundles["Semigroup"]["_∙_"](z_jAgda_Algebra_Bundles["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))(x6(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8)))(x6(x8)))(exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x7)))(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8))(x8)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Bundles["Group"]["isGroup"](x5)))))))))(x6(z_jAgda_Algebra_Bundles["Group"]["_∙_"](x4)(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8))(x8)))(x6(z_jAgda_Algebra_Bundles["Group"]["ε"](x4)))(z_jAgda_Algebra_Bundles["Group"]["ε"](x5))(exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x7)))(z_jAgda_Algebra_Bundles["Group"]["_∙_"](x4)(z_jAgda_Algebra_Bundles["Group"]["_⁻¹"](x4)(x8))(x8))(z_jAgda_Algebra_Bundles["Group"]["ε"](x4))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Bundles["Group"]["isGroup"](x4)))(x8)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Bundles["Group"]["isGroup"](x5)))))))))(x6(z_jAgda_Algebra_Bundles["Group"]["ε"](x4)))(z_jAgda_Algebra_Bundles["Monoid"]["ε"](z_jAgda_Algebra_Bundles["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)))(z_jAgda_Algebra_Bundles["Group"]["ε"](x5))(exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["ε-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](x7)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Bundles["Group"]["isGroup"](x5)))))))(z_jAgda_Algebra_Bundles["Group"]["ε"](x5))))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 888 12317305610259864193"] = {};
exports["_NameId 888 12317305610259864193"]["F"] = {};
exports["_NameId 888 12317305610259864193"]["F"]["group"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism"]["record"] = function (x0) {
    return {
      "mn-homo": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
    };
  };
exports["_NameId 888 12317305610259864193"]["T"] = {};
exports["_NameId 888 12317305610259864193"]["T"]["group"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"] = {};
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"] = {};
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"]["mn-homo"] = function (x0) {
    return exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"](x0));
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"]["sm-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"](x0)));
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"]["ε-homo"] = function (x0) {
    return exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["ε-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"](x0)));
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"]["⁻¹-homo"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["⁻¹-homo"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4))(z_jAgda_Algebra_Bundles["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5))(x6)(exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"]["∙-homo"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["∙-homo"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"](x0))));
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["_NameId 1094 12317305610259864193"]["⟦⟧-cong"] = function (x0) {
    return exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["⟦⟧-cong"](exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["sm-homo"](exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["mn-homo"](exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["gp-homo"](x0))));
  };
exports["_NameId 1112 12317305610259864193"] = {};
exports["_NameId 1112 12317305610259864193"]["F"] = {};
exports["_NameId 1112 12317305610259864193"]["F"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)));
            };
          };
        };
      };
    };
  };
exports["_NameId 1112 12317305610259864193"]["F"]["+-abelianGroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Ring"]["+-abelianGroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
            };
          };
        };
      };
    };
  };
exports["_NameId 1112 12317305610259864193"]["T"] = {};
exports["_NameId 1112 12317305610259864193"]["T"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)));
            };
          };
        };
      };
    };
  };
exports["_NameId 1112 12317305610259864193"]["T"]["+-abelianGroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["Ring"]["+-abelianGroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism"]["record"] = function (x0) {
    return {
      "mn-homo": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
    };
  };
exports["_NameId 1112 12317305610259864193"]["IsRingMorphism"] = {};
exports["_NameId 1112 12317305610259864193"]["IsRingMorphism"]["+-abgp-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["_NameId 1112 12317305610259864193"]["IsRingMorphism"]["*-mn-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism"]["record"] = function (x0) {
    return {
      "mn-homo": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
    };
  };
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism"]["record"] = function (x0) {
    return {
      "gp-homo": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
    };
  };
exports["_NameId 1112 12317305610259864193"]["IsRingMorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "*-mn-homo": x1,
        "+-abgp-homo": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["Definitions"] = {};
exports["Definitions"]["_NameId 30 12317305610259864193"] = {};
exports["Definitions"]["_NameId 30 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["Definitions"]["_NameId 30 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["Definitions"]["_NameId 30 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["Definitions"]["_NameId 30 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 42 12317305610259864193"]["F"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 42 12317305610259864193"]["_NameId 132 12317305610259864193"] = {};
exports["_NameId 42 12317305610259864193"]["_NameId 132 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 42 12317305610259864193"]["_NameId 132 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 42 12317305610259864193"]["_NameId 132 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 42 12317305610259864193"]["_NameId 132 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 42 12317305610259864193"]["IsSemigroupMorphism-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 160 12317305610259864193"]["_NameId 278 12317305610259864193"] = {};
exports["_NameId 160 12317305610259864193"]["_NameId 278 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 160 12317305610259864193"]["_NameId 278 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 160 12317305610259864193"]["_NameId 278 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 160 12317305610259864193"]["_NameId 278 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 160 12317305610259864193"]["IsMonoidMorphism-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 312 12317305610259864193"]["_NameId 446 12317305610259864193"] = {};
exports["_NameId 312 12317305610259864193"]["_NameId 446 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 312 12317305610259864193"]["_NameId 446 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 312 12317305610259864193"]["_NameId 446 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 312 12317305610259864193"]["_NameId 446 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 312 12317305610259864193"]["IsCommutativeMonoidMorphism-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 480 12317305610259864193"]["_NameId 626 12317305610259864193"] = {};
exports["_NameId 480 12317305610259864193"]["_NameId 626 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 480 12317305610259864193"]["_NameId 626 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 480 12317305610259864193"]["_NameId 626 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 480 12317305610259864193"]["_NameId 626 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 480 12317305610259864193"]["IsIdempotentCommutativeMonoidMorphism-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 662 12317305610259864193"]["_NameId 824 12317305610259864193"] = {};
exports["_NameId 662 12317305610259864193"]["_NameId 824 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 662 12317305610259864193"]["_NameId 824 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 662 12317305610259864193"]["_NameId 824 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 662 12317305610259864193"]["_NameId 824 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 662 12317305610259864193"]["IsGroupMorphism-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 888 12317305610259864193"]["_NameId 1074 12317305610259864193"] = {};
exports["_NameId 888 12317305610259864193"]["_NameId 1074 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 888 12317305610259864193"]["_NameId 1074 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 888 12317305610259864193"]["_NameId 1074 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 888 12317305610259864193"]["_NameId 1074 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 888 12317305610259864193"]["IsAbelianGroupMorphism-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1112 12317305610259864193"]["_NameId 1430 12317305610259864193"] = {};
exports["_NameId 1112 12317305610259864193"]["_NameId 1430 12317305610259864193"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1112 12317305610259864193"]["_NameId 1430 12317305610259864193"]["Homomorphic₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1112 12317305610259864193"]["_NameId 1430 12317305610259864193"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1112 12317305610259864193"]["_NameId 1430 12317305610259864193"]["Morphism"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1112 12317305610259864193"]["IsRingMorphism-syntax"] = agdaRTS.primIntegerFromString("0");

