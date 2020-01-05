var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Builtin_Nat = require("jAgda.Agda.Builtin.Nat");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Algebra_Morphism = require("jAgda.Algebra.Morphism");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Data_Bool_Properties = require("jAgda.Data.Bool.Properties");
var z_jAgda_Data_Empty = require("jAgda.Data.Empty");
var z_jAgda_Data_Nat_Base = require("jAgda.Data.Nat.Base");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Consequences = require("jAgda.Relation.Binary.Consequences");
var z_jAgda_Relation_Binary_Definitions = require("jAgda.Relation.Binary.Definitions");
var z_jAgda_Relation_Binary_PropositionalEquality = require("jAgda.Relation.Binary.PropositionalEquality");
var z_jAgda_Relation_Binary_PropositionalEquality_Core = require("jAgda.Relation.Binary.PropositionalEquality.Core");
var z_jAgda_Relation_Binary_Reasoning_Base_Triple = require("jAgda.Relation.Binary.Reasoning.Base.Triple");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");
var z_jAgda_Relation_Nullary_Decidable = require("jAgda.Relation.Nullary.Decidable");
var z_jAgda_Relation_Nullary_Decidable_Core = require("jAgda.Relation.Nullary.Decidable.Core");

exports["≤-Reasoning"] = {};
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"] = {};
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_IsRelatedTo_"] = {};
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["IsEquality"] = {};
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["IsStrict"] = {};
exports["_≟_"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary_Decidable_Core["map′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Properties["T?"]((agdaRTS.uprimIntegerEqual)(x0, x1)));
    };
  };
exports["<ᵇ⇒<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<ᵇ⇒<"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["≤-pred"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return x5;
          }
        });
      };
    };
  };
exports["≤-reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-reflexive"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["≤-refl"] = function (x0) {
    return exports["≤-reflexive"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
  };
exports["≤-trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x3({
              "s≤s": function (x5, x6, x7) {
                return x4({
                  "s≤s": function (x8, x9, x10) {
                    return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)(x10));
                  }
                });
              },
              "z≤n": function (x5) {
                return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
              }
            });
          };
        };
      };
    };
  };
exports["≤-total"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
      } else {
        return exports["≤-total"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))({
          "inj₁": function (x2) {
            return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
          },
          "inj₂": function (x2) {
            return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
          }
        });
      }
    };
  };
exports["_≤?_"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"))));
      } else {
        return z_jAgda_Relation_Nullary_Decidable_Core["map′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<ᵇ⇒<"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Properties["T?"]((agdaRTS.uprimIntegerLessThan)((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")), x1)));
      }
    };
  };
exports["_≥?_"] = function (x0) {
    return function (x1) {
      return exports["_≤?_"](x1)(x0);
    };
  };
exports["≤-step"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2;
      };
    };
  };
exports["n≤1+n"] = function (x0) {
    return exports["≤-refl"](x0);
  };
exports["<⇒≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(exports["≤-refl"]((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
          }
        });
      };
    };
  };
exports["≰⇒>"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≰⇒>"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["≰⇒≥"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["<⇒≤"](agdaRTS.primIntegerFromString("0"))(x0)(exports["≰⇒>"](x0)(x1)(agdaRTS.primIntegerFromString("0")));
      };
    };
  };
exports["≮⇒≥"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≮⇒≥"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["≤∧≢⇒<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
            return (agdaRTS.primSeq)(x2, z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
          } else {
            return x2({
              "s≤s": function (x4, x5, x6) {
                return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤∧≢⇒<"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(x6)(agdaRTS.primIntegerFromString("0")));
              },
              "z≤n": function (x4) {
                return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
              }
            });
          }
        };
      };
    };
  };
exports["≤-<-connex"] = function (x0) {
    return function (x1) {
      return exports["_≤?_"](x0)(x1)["_because_"]({
        "_because_": function (x2, x3) {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x2, {
            "false": function () {
              return (agdaRTS.primSeq)(x3, z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](exports["≰⇒>"](x0)(x1)(agdaRTS.primIntegerFromString("0"))));
            },
            "true": function () {
              return x3({
                "ofʸ": function (x4) {
                  return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](x4);
                }
              });
            }
          });
        }
      });
    };
  };
exports["≥->-connex"] = function (x0) {
    return function (x1) {
      return exports["≤-<-connex"](x1)(x0);
    };
  };
exports["<-trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x3({
              "s≤s": function (x5, x6, x7) {
                return x4({
                  "s≤s": function (x8, x9, x10) {
                    return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)(exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["n≤1+n"]((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))))(x10)));
                  }
                });
              }
            });
          };
        };
      };
    };
  };
exports["<-transʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4({
              "s≤s": function (x5, x6, x7) {
                return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(x7));
              }
            });
          };
        };
      };
    };
  };
exports["<-transˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x3({
              "s≤s": function (x5, x6, x7) {
                return x4({
                  "s≤s": function (x8, x9, x10) {
                    return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)(x10));
                  }
                });
              }
            });
          };
        };
      };
    };
  };
exports["<-cmp"] = function (x0) {
    return function (x1) {
      return exports["_≟_"](x0)(x1)["_because_"]({
        "_because_": function (x2, x3) {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x2, {
            "false": function () {
              return (agdaRTS.primSeq)(x3, z_jAgda_Data_Bool_Properties["T?"]((agdaRTS.uprimIntegerLessThan)(x0, x1))["_because_"]({
                "_because_": function (x4, x5) {
                  return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x4, {
                    "false": function () {
                      return (agdaRTS.primSeq)(x5, z_jAgda_Relation_Binary_Definitions["Tri"]["tri>"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤∧≢⇒<"](agdaRTS.primIntegerFromString("0"))(x0)(exports["≮⇒≥"](x0)(x1)(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))));
                    },
                    "true": function () {
                      return (agdaRTS.primSeq)(x5, z_jAgda_Relation_Binary_Definitions["Tri"]["tri<"](exports["<ᵇ⇒<"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
                    }
                  });
                }
              }));
            },
            "true": function () {
              return x3({
                "ofʸ": function (x4) {
                  return z_jAgda_Relation_Binary_Definitions["Tri"]["tri≈"](agdaRTS.primIntegerFromString("0"))(x4)(agdaRTS.primIntegerFromString("0"));
                }
              });
            }
          });
        }
      });
    };
  };
exports["_<?_"] = function (x0) {
    return function (x1) {
      return exports["_≤?_"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0))(x1);
    };
  };
exports["_>?_"] = function (x0) {
    return function (x1) {
      return exports["_<?_"](x1)(x0);
    };
  };
exports["0<1+n"] = function (x0) {
    return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
  };
exports["n<1+n"] = function (x0) {
    return exports["≤-refl"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0));
  };
exports["n≢0⇒n>0"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
      } else {
        return exports["0<1+n"](agdaRTS.primIntegerFromString("0"));
      }
    };
  };
exports["m<n⇒m≤1+n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return x5({
              "s≤s": function (x6, x7, x8) {
                return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m<n⇒m≤1+n"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8)));
              },
              "z≤n": function (x6) {
                return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
              }
            });
          }
        });
      };
    };
  };
exports["∀[m≤n⇒m≢o]⇒o<n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return exports["0<1+n"](agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∀[m≤n⇒m≢o]⇒o<n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["∀[m<n⇒m≢o]⇒o≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∀[m<n⇒m≢o]⇒o≤n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_∎"] = function (x0) {
    return z_jAgda_Relation_Binary_Reasoning_Base_Triple["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["≤-isPreorder"]))(x0));
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_≡˘⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4;
          };
        };
      };
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_≡⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4;
          };
        };
      };
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_≡⟨⟩_"] = function (x0) {
    return x0;
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["equals"] = function (x0) {
    return function (x1) {
      return x1["equals"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["isEquality"] = function (x0) {
    return function (x1) {
      return x1["isEquality"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["isStrict"] = function (x0) {
    return function (x1) {
      return x1["isStrict"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["nonstrict"] = function (x0) {
    return function (x1) {
      return x1["nonstrict"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["strict"] = function (x0) {
    return function (x1) {
      return x1["strict"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_IsRelatedTo_"]["equals"] = function (x0) {
    return function (x1) {
      return x1["equals"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_IsRelatedTo_"]["nonstrict"] = function (x0) {
    return function (x1) {
      return x1["nonstrict"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_IsRelatedTo_"]["strict"] = function (x0) {
    return function (x1) {
      return x1["strict"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["IsEquality"]["isEquality"] = function (x0) {
    return function (x1) {
      return x1["isEquality"](x0);
    };
  };
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["IsStrict"]["isStrict"] = function (x0) {
    return function (x1) {
      return x1["isStrict"](x0);
    };
  };
exports["pred-mono"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return x5;
          },
          "z≤n": function (x3) {
            return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
          }
        });
      };
    };
  };
exports["≤pred⇒≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return (agdaRTS.primSeq)(x1, x2);
      };
    };
  };
exports["≤⇒pred≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return x2;
        } else {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["n≤1+n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"))))(x2);
        }
      };
    };
  };
exports["<⇒≤pred"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return x5;
          }
        });
      };
    };
  };
exports["+-cancelˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return x3;
          } else {
            return x3({
              "s≤s": function (x4, x5, x6) {
                return exports["+-cancelˡ-≤"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              }
            });
          }
        };
      };
    };
  };
exports["+-cancelʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["+-cancelˡ-≤"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["+-cancelˡ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["+-cancelˡ-≤"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["+-cancelʳ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["+-cancelʳ-≤"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["≤-stepsˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3;
        };
      };
    };
  };
exports["≤-stepsʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3;
        };
      };
    };
  };
exports["m≤m+n"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤m+n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
      }
    };
  };
exports["m≤n+m"] = function (x0) {
    return function (x1) {
      return exports["m≤m+n"](x0)(agdaRTS.primIntegerFromString("0"));
    };
  };
exports["m≤n⇒m<n∨m≡n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
            return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
          } else {
            return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](exports["0<1+n"](agdaRTS.primIntegerFromString("0")));
          }
        } else {
          return x2({
            "s≤s": function (x3, x4, x5) {
              return exports["m≤n⇒m<n∨m≡n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(x5)({
                "inj₁": function (x6) {
                  return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6));
                },
                "inj₂": function (x6) {
                  return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
                }
              });
            }
          });
        }
      };
    };
  };
exports["m+n≤o⇒m≤o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
          } else {
            return x3({
              "s≤s": function (x4, x5, x6) {
                return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m+n≤o⇒m≤o"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6));
              }
            });
          }
        };
      };
    };
  };
exports["m+n≤o⇒n≤o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return x3;
          } else {
            return exports["m+n≤o⇒n≤o"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x2)(exports["<⇒≤"](agdaRTS.primIntegerFromString("0"))(x2)(x3));
          }
        };
      };
    };
  };
exports["+-mono-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "s≤s": function (x6, x7, x8) {
                  return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["+-mono-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(x8)(x5));
                },
                "z≤n": function (x6) {
                  return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(exports["m≤n+m"](x3)(agdaRTS.primIntegerFromString("0")));
                }
              });
            };
          };
        };
      };
    };
  };
exports["+-monoˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["+-mono-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x0)(x3)(exports["≤-refl"](x0));
        };
      };
    };
  };
exports["+-monoʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["+-mono-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(exports["≤-refl"](x0))(x3);
        };
      };
    };
  };
exports["+-mono-<-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "s≤s": function (x6, x7, x8) {
                  return x8({
                    "s≤s": function (x9, x10, x11) {
                      return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["+-mono-<-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11))(x5));
                    },
                    "z≤n": function (x9) {
                      return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                    }
                  });
                }
              });
            };
          };
        };
      };
    };
  };
exports["+-mono-≤-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "s≤s": function (x6, x7, x8) {
                  return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["+-mono-≤-<"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(x8)(x5));
                },
                "z≤n": function (x6) {
                  return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(exports["m≤n+m"](x3)(agdaRTS.primIntegerFromString("0")));
                }
              });
            };
          };
        };
      };
    };
  };
exports["+-mono-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["+-mono-≤-<"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(exports["<⇒≤"](agdaRTS.primIntegerFromString("0"))(x1)(x4));
          };
        };
      };
    };
  };
exports["+-monoˡ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["+-monoˡ-≤"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
      };
    };
  };
exports["+-monoʳ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return x3;
          } else {
            return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["+-monoʳ-<"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
          }
        };
      };
    };
  };
exports["m<m+n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return x2;
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m<m+n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x2));
        }
      };
    };
  };
exports["m*n≡0⇒m≡0∨n≡0"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
        }
      };
    };
  };
exports["*-cancelʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
          } else {
            return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["*-cancelʳ-≤"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
          }
        };
      };
    };
  };
exports["*-cancelˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["*-cancelʳ-≤"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
      };
    };
  };
exports["*-mono-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "s≤s": function (x6, x7, x8) {
                  return exports["+-mono-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMultiply)((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")), x3))(x5)(exports["*-mono-≤"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x3)(x8)(x5));
                },
                "z≤n": function (x6) {
                  return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
                }
              });
            };
          };
        };
      };
    };
  };
exports["*-monoˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["*-mono-≤"](agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(x0)(x3)(exports["≤-refl"](x0));
        };
      };
    };
  };
exports["*-monoʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["*-mono-≤"](agdaRTS.primIntegerFromString("0"))(x0)(agdaRTS.primIntegerFromString("0"))(x2)(exports["≤-refl"](x0))(x3);
        };
      };
    };
  };
exports["*-mono-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "s≤s": function (x6, x7, x8) {
                  return x8({
                    "s≤s": function (x9, x10, x11) {
                      return x5({
                        "s≤s": function (x12, x13, x14) {
                          return exports["+-mono-<"](agdaRTS.primIntegerFromString("0"))(x3)(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMultiply)((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")), x3))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x14))(exports["*-mono-<"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x3)(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x14)));
                        }
                      });
                    },
                    "z≤n": function (x9) {
                      return (agdaRTS.primSeq)(x5, z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"))));
                    }
                  });
                }
              });
            };
          };
        };
      };
    };
  };
exports["*-monoˡ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3({
            "s≤s": function (x4, x5, x6) {
              return x6({
                "s≤s": function (x7, x8, x9) {
                  return exports["+-mono-≤-<"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMultiply)((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")), (agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0)))(exports["≤-refl"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0)))(exports["*-monoˡ-<"](x0)(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)));
                },
                "z≤n": function (x7) {
                  return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
                }
              });
            }
          });
        };
      };
    };
  };
exports["*-monoʳ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return x3({
              "s≤s": function (x4, x5, x6) {
                return exports["+-mono-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
              }
            });
          } else {
            return x3({
              "s≤s": function (x4, x5, x6) {
                return exports["+-mono-≤"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMultiply)(x0, x2))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6))(exports["<⇒≤"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMultiply)(x0, x2))(exports["*-monoʳ-<"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x2)(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6))));
              }
            });
          }
        };
      };
    };
  };
exports["m≤m*n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Reasoning_Base_Triple["begin_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<⇒≤"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x0)((agdaRTS.uprimIntegerMultiply)(x0, x1))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_≤⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-transʳ"])((agdaRTS.uprimIntegerMultiply)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMultiply)(x0, x1))((agdaRTS.uprimIntegerMultiply)(x0, x1))(exports["*-monoʳ-≤"](x0)(agdaRTS.primIntegerFromString("0"))(x1)(x2))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["≤-isPreorder"]))((agdaRTS.uprimIntegerMultiply)(x0, x1)))));
      };
    };
  };
exports["m<m*n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return (agdaRTS.primSeq)(x2, x3({
            "s≤s": function (x4, x5, x6) {
              return (agdaRTS.primSeq)(x6, z_jAgda_Relation_Binary_Reasoning_Base_Triple["begin-strict_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_<⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-trans"])(z_jAgda_Relation_Binary_PropositionalEquality_Core["resp₂"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(exports["<-transˡ"])(agdaRTS.primIntegerFromString("0"))(x0)((agdaRTS.uprimIntegerMinus)((agdaRTS.uprimIntegerPlus)(x0, x1), agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMultiply)(x0, x1))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤n+m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")))))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_≤⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-transʳ"])((agdaRTS.uprimIntegerPlus)(x1, (agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"))))((agdaRTS.uprimIntegerPlus)(x1, (agdaRTS.uprimIntegerMultiply)((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")), x1)))((agdaRTS.uprimIntegerMultiply)(x0, x1))(exports["+-monoʳ-≤"](x1)(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMultiply)((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")), x1))(exports["m≤m*n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(x1)(exports["0<1+n"](agdaRTS.primIntegerFromString("0")))))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["≤-isPreorder"]))((agdaRTS.uprimIntegerMultiply)(x0, x1))))))(agdaRTS.primIntegerFromString("0")));
            }
          }));
        };
      };
    };
  };
exports["*-cancelʳ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return (agdaRTS.primSeq)(x0, ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)? ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x2, agdaRTS.primIntegerFromString("1"))? exports["0<1+n"](agdaRTS.primIntegerFromString("0")): z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["*-cancelʳ-<"](x0)((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")))): ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x2, agdaRTS.primIntegerFromString("1"))? z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["*-cancelʳ-<"](x0)((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))): z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["*-cancelʳ-<"](x0)((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))))));
        };
      };
    };
  };
exports["*-cancelˡ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["*-cancelʳ-<"](x0)(x1)(x2);
      };
    };
  };
exports["^-semigroup-morphism"] = function (x0) {
    return z_jAgda_Algebra_Morphism["_NameId 42 12317305610259864193"]["IsSemigroupMorphism"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
  };
exports["^-monoid-morphism"] = function (x0) {
    return z_jAgda_Algebra_Morphism["_NameId 160 12317305610259864193"]["IsMonoidMorphism"]["record"](exports["^-semigroup-morphism"](agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
  };
exports["m^n≡1⇒n≡0∨m≡1"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
        }
      };
    };
  };
exports["⊔-sel"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
      } else {
        return exports["⊔-sel"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")));
      }
    };
  };
exports["⊔-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["⊔-sel"](x0)(x1)({
              "inj₁": function (x5) {
                return x3;
              },
              "inj₂": function (x5) {
                return x4;
              }
            });
          };
        };
      };
    };
  };
exports["m≤m⊔n"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return exports["≤-refl"](x0);
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤m⊔n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["n≤m⊔n"] = function (x0) {
    return function (x1) {
      return exports["m≤m⊔n"](x1)(x0);
    };
  };
exports["n⊔m≡m⇒n≤m"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["m≤m⊔n"](x1)(x0);
      };
    };
  };
exports["n⊔m≡n⇒m≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["n≤m⊔n"](x1)(x0);
      };
    };
  };
exports["m≤n⇒m≤n⊔o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(exports["m≤m⊔n"](x1)(x2));
        };
      };
    };
  };
exports["m≤n⇒m≤o⊔n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(exports["n≤m⊔n"](x2)(x1));
        };
      };
    };
  };
exports["m⊔n≤o⇒m≤o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤m⊔n"](x0)(x1))(x3);
        };
      };
    };
  };
exports["m⊔n≤o⇒n≤o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["n≤m⊔n"](x0)(x1))(x3);
        };
      };
    };
  };
exports["m<n⇒m<n⊔o"] = function (x0) {
    return function (x1) {
      return exports["m≤n⇒m≤n⊔o"](agdaRTS.primIntegerFromString("0"))(x1);
    };
  };
exports["m<n⇒m<o⊔n"] = function (x0) {
    return function (x1) {
      return exports["m≤n⇒m≤o⊔n"](agdaRTS.primIntegerFromString("0"))(x1);
    };
  };
exports["m⊔n<o⇒m<o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["<-transʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤m⊔n"](x0)(x1))(x3);
        };
      };
    };
  };
exports["m⊔n<o⇒n<o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["<-transʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["n≤m⊔n"](x0)(x1))(x3);
        };
      };
    };
  };
exports["⊔-mono-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["⊔-sel"](x0)(x2)({
                "inj₁": function (x6) {
                  return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(exports["m≤m⊔n"](x1)(x3));
                },
                "inj₂": function (x6) {
                  return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(exports["n≤m⊔n"](x1)(x3));
                }
              });
            };
          };
        };
      };
    };
  };
exports["⊔-monoˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["⊔-mono-≤"](x1)(x2)(x0)(x0)(x3)(exports["≤-refl"](x0));
        };
      };
    };
  };
exports["⊔-monoʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["⊔-mono-≤"](x0)(x0)(x1)(x2)(exports["≤-refl"](x0))(x3);
        };
      };
    };
  };
exports["⊔-mono-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["⊔-mono-≤"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0))(x1)((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x2))(x3);
        };
      };
    };
  };
exports["m⊔n≤m+n"] = function (x0) {
    return function (x1) {
      return exports["⊔-sel"](x0)(x1)({
        "inj₁": function (x2) {
          return exports["m≤m+n"](x0)(agdaRTS.primIntegerFromString("0"));
        },
        "inj₂": function (x2) {
          return exports["m≤n+m"](x1)(agdaRTS.primIntegerFromString("0"));
        }
      });
    };
  };
exports["⊓-sel"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
      } else {
        return exports["⊓-sel"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")));
      }
    };
  };
exports["⊓-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["⊓-sel"](x0)(x1)({
              "inj₁": function (x5) {
                return x3;
              },
              "inj₂": function (x5) {
                return x4;
              }
            });
          };
        };
      };
    };
  };
exports["m⊓n≤m"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["m⊓n≤n"] = function (x0) {
    return function (x1) {
      return exports["m⊓n≤m"](x1)(x0);
    };
  };
exports["m⊓n≡m⇒m≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["m⊓n≤n"](x0)(x1);
      };
    };
  };
exports["m⊓n≡n⇒n≤m"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["m⊓n≤m"](x0)(x1);
      };
    };
  };
exports["m≤n⇒m⊓o≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤m"](x0)(x2))(x3);
        };
      };
    };
  };
exports["m≤n⇒o⊓m≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤n"](x2)(x0))(x3);
        };
      };
    };
  };
exports["m≤n⊓o⇒m≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(exports["m⊓n≤m"](x1)(x2));
        };
      };
    };
  };
exports["m≤n⊓o⇒m≤o"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(exports["m⊓n≤n"](x1)(x2));
        };
      };
    };
  };
exports["m<n⇒m⊓o<n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["<-transʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤m"](x0)(x2))(x3);
        };
      };
    };
  };
exports["m<n⇒o⊓m<n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["<-transʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤n"](x2)(x0))(x3);
        };
      };
    };
  };
exports["m<n⊓o⇒m<n"] = function (x0) {
    return exports["m≤n⊓o⇒m≤n"](agdaRTS.primIntegerFromString("0"));
  };
exports["m<n⊓o⇒m<o"] = function (x0) {
    return exports["m≤n⊓o⇒m≤o"](agdaRTS.primIntegerFromString("0"));
  };
exports["⊓-mono-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["⊓-sel"](x1)(x3)({
                "inj₁": function (x6) {
                  return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤m"](x0)(x2))(x4);
                },
                "inj₂": function (x6) {
                  return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤n"](x0)(x2))(x5);
                }
              });
            };
          };
        };
      };
    };
  };
exports["⊓-monoˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["⊓-mono-≤"](x1)(x2)(x0)(x0)(x3)(exports["≤-refl"](x0));
        };
      };
    };
  };
exports["⊓-monoʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["⊓-mono-≤"](x0)(x0)(x1)(x2)(exports["≤-refl"](x0))(x3);
        };
      };
    };
  };
exports["⊓-mono-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["⊓-mono-≤"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0))(x1)((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x2))(x3);
        };
      };
    };
  };
exports["m⊓n≤m⊔n"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m⊓n≤m⊔n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["m⊓n≤m+n"] = function (x0) {
    return function (x1) {
      return exports["⊓-sel"](x0)(x1)({
        "inj₁": function (x2) {
          return exports["m≤m+n"](x0)(agdaRTS.primIntegerFromString("0"));
        },
        "inj₂": function (x2) {
          return exports["m≤n+m"](x1)(agdaRTS.primIntegerFromString("0"));
        }
      });
    };
  };
exports["m∸n≤m"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return exports["≤-refl"](z_jAgda_Agda_Builtin_Nat["_-_"](x0)(agdaRTS.primIntegerFromString("0")));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return exports["≤-refl"](z_jAgda_Agda_Builtin_Nat["_-_"](agdaRTS.primIntegerFromString("0"))(x1));
      } else {
        return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))))(exports["n≤1+n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["∸-mono"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "s≤s": function (x6, x7, x8) {
                  return x5({
                    "s≤s": function (x9, x10, x11) {
                      if ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x0, agdaRTS.primIntegerFromString("1"))) {
                        if ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x1, agdaRTS.primIntegerFromString("1"))) {
                          if ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x2, agdaRTS.primIntegerFromString("1"))) {
                            if ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x3, agdaRTS.primIntegerFromString("1"))) {
                              return exports["∸-mono"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x3, agdaRTS.primIntegerFromString("1")))(x8)(x11);
                            } else {
                              return (agdaRTS.primSeq)(x5, exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(x4));
                            }
                          } else {
                            return (agdaRTS.primSeq)(x5, exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(x4));
                          }
                        } else {
                          return (agdaRTS.primSeq)(x5, exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(x4));
                        }
                      } else {
                        return (agdaRTS.primSeq)(x5, exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(x4));
                      }
                    },
                    "z≤n": function (x9) {
                      return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8));
                    }
                  });
                },
                "z≤n": function (x6) {
                  return x5({
                    "s≤s": function (x7, x8, x9) {
                      if ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x2, agdaRTS.primIntegerFromString("1"))) {
                        if ((agdaRTS.uprimIntegerGreaterOrEqualThan)(x3, agdaRTS.primIntegerFromString("1"))) {
                          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
                        } else {
                          return (agdaRTS.primSeq)(x5, exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(x4));
                        }
                      } else {
                        return (agdaRTS.primSeq)(x5, exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(x4));
                      }
                    },
                    "z≤n": function (x7) {
                      return exports["≤-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"](x0)(x2))(z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
                    }
                  });
                }
              });
            };
          };
        };
      };
    };
  };
exports["∸-monoˡ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["∸-mono"](x0)(x1)(x2)(x2)(x3)(exports["≤-refl"](x2));
        };
      };
    };
  };
exports["∸-monoʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["∸-mono"](x2)(x2)(x1)(x0)(exports["≤-refl"](x2))(x3);
        };
      };
    };
  };
exports["∸-monoʳ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x2)) {
              return (agdaRTS.primSeq)(x3, (agdaRTS.primSeq)(x4, z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≤m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))))));
            } else {
              return x3({
                "s≤s": function (x5, x6, x7) {
                  return x4({
                    "s≤s": function (x8, x9, x10) {
                      return exports["∸-monoʳ-<"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))(x7)(x10);
                    }
                  });
                }
              });
            }
          };
        };
      };
    };
  };
exports["∸-cancelʳ-≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x3({
              "s≤s": function (x5, x6, x7) {
                if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
                  return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                } else {
                  return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∸-cancelʳ-≤"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x7)(agdaRTS.primIntegerFromString("0")));
                }
              },
              "z≤n": function (x5) {
                return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
              }
            });
          };
        };
      };
    };
  };
exports["∸-cancelʳ-<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
            return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
          } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
            return exports["0<1+n"](agdaRTS.primIntegerFromString("0"));
          } else {
            return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∸-cancelʳ-<"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
          }
        };
      };
    };
  };
exports["m∸n≡0⇒m≤n"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m∸n≡0⇒m≤n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["m<n⇒0<n∸m"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return exports["0<1+n"](agdaRTS.primIntegerFromString("0"));
        } else {
          return x2({
            "s≤s": function (x3, x4, x5) {
              return exports["m<n⇒0<n∸m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(x5);
            }
          });
        }
      };
    };
  };
exports["m∸n≢0⇒n<m"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["_<?_"](x1)(x0)["_because_"]({
          "_because_": function (x3, x4) {
            return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x3, {
              "false": function () {
                return (agdaRTS.primSeq)(x4, z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
              },
              "true": function () {
                return x4({
                  "ofʸ": function (x5) {
                    return x5;
                  }
                });
              }
            });
          }
        });
      };
    };
  };
exports["m≤n+m∸n"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return exports["≤-refl"](x0);
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤n+m∸n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["∣m-n∣≡m∸n⇒n≤m"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        } else {
          return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∣m-n∣≡m∸n⇒n≤m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
        }
      };
    };
  };
exports["m∸n≤∣m-n∣"] = function (x0) {
    return function (x1) {
      return exports["≤-total"](x0)(x1)({
        "inj₁": function (x2) {
          return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
        },
        "inj₂": function (x2) {
          return exports["≤-refl"](z_jAgda_Agda_Builtin_Nat["_-_"](x0)(x1));
        }
      });
    };
  };
exports["∣m-n∣≤m⊔n"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return exports["≤-refl"](z_jAgda_Data_Nat_Base["∣_-_∣"](agdaRTS.primIntegerFromString("0"))(x1));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return exports["≤-refl"](z_jAgda_Data_Nat_Base["∣_-_∣"](x0)(agdaRTS.primIntegerFromString("0")));
      } else {
        return exports["∣m-n∣≤m⊔n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")));
      }
    };
  };
exports["∣m-n∣≡[m∸n]∨[n∸m]"] = function (x0) {
    return function (x1) {
      return exports["≤-total"](x0)(x1)({
        "inj₁": function (x2) {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](z_jAgda_Relation_Binary_Reasoning_Base_Triple["begin-equality_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["≤-isPreorder"]))(z_jAgda_Agda_Builtin_Nat["_-_"](x1)(x0))))(agdaRTS.primIntegerFromString("0")));
        },
        "inj₂": function (x2) {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
        }
      });
    };
  };
exports["m≤n+∣n-m∣"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return exports["≤-refl"](x0);
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤n+∣n-m∣"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["m≤n+∣m-n∣"] = function (x0) {
    return function (x1) {
      return exports["m≤n+∣n-m∣"](x0)(x1);
    };
  };
exports["m≤∣m-n∣+n"] = function (x0) {
    return function (x1) {
      return exports["m≤n+∣m-n∣"](x0)(x1);
    };
  };
exports["⌊n/2⌋-mono"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return x5({
              "s≤s": function (x6, x7, x8) {
                return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["⌊n/2⌋-mono"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8));
              },
              "z≤n": function (x6) {
                return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
              }
            });
          },
          "z≤n": function (x3) {
            return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
          }
        });
      };
    };
  };
exports["⌈n/2⌉-mono"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["⌊n/2⌋-mono"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["≤′-trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4({
              "≤′-refl": function () {
                return x3;
              },
              "≤′-step": function (x5, x6) {
                return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-step"](agdaRTS.primIntegerFromString("0"))(exports["≤′-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(x6));
              }
            });
          };
        };
      };
    };
  };
exports["z≤′n"] = function (x0) {
    if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-refl"];
    } else {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-step"](agdaRTS.primIntegerFromString("0"))(exports["z≤′n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"))));
    }
  };
exports["s≤′s"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2;
      };
    };
  };
exports["≤′⇒≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "≤′-refl": function () {
            return exports["≤-refl"](x0);
          },
          "≤′-step": function (x3, x4) {
            return exports["≤′⇒≤"](x0)(agdaRTS.primIntegerFromString("0"))(x4);
          }
        });
      };
    };
  };
exports["≤⇒≤′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "s≤s": function (x3, x4, x5) {
            return exports["≤⇒≤′"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")))(x5);
          },
          "z≤n": function (x3) {
            return exports["z≤′n"](x1);
          }
        });
      };
    };
  };
exports["_≤′?_"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary_Decidable_Core["map′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤⇒≤′"](agdaRTS.primIntegerFromString("0"))(x1))(agdaRTS.primIntegerFromString("0"))(exports["_≤?_"](x0)(x1));
    };
  };
exports["_<′?_"] = function (x0) {
    return function (x1) {
      return exports["_≤′?_"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0))(x1);
    };
  };
exports["_≥′?_"] = function (x0) {
    return function (x1) {
      return exports["_≤′?_"](x1)(x0);
    };
  };
exports["_>′?_"] = function (x0) {
    return function (x1) {
      return exports["_<′?_"](x1)(x0);
    };
  };
exports["m≤′m+n"] = function (x0) {
    return function (x1) {
      return exports["≤⇒≤′"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerPlus)(x0, x1))(exports["m≤m+n"](x0)(agdaRTS.primIntegerFromString("0")));
    };
  };
exports["n≤′m+n"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-refl"];
      } else {
        return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-step"](agdaRTS.primIntegerFromString("0"))(exports["n≤′m+n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
      }
    };
  };
exports["⌈n/2⌉≤′n"] = function (x0) {
    if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-refl"];
    } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("1"), x0)) {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-refl"];
    } else {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-step"](agdaRTS.primIntegerFromString("0"))(exports["⌈n/2⌉≤′n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("2"))));
    }
  };
exports["⌊n/2⌋≤′n"] = function (x0) {
    if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-refl"];
    } else {
      return z_jAgda_Data_Nat_Base["_≤′_"]["≤′-step"](agdaRTS.primIntegerFromString("0"))(exports["⌈n/2⌉≤′n"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"))));
    }
  };
exports["<ᵇ⇒<″"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Data_Nat_Base["_≤″_"]["less-than-or-equal"](z_jAgda_Agda_Builtin_Nat["_-_"](x1)((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0)))(agdaRTS.primIntegerFromString("0"));
      };
    };
  };
exports["≤″⇒≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
          return (agdaRTS.primSeq)(x2, z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0")));
        } else {
          return x2["less-than-or-equal"]({
            "less-than-or-equal": function (x3, x4) {
              return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤″⇒≤"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_≤″_"]["less-than-or-equal"](x3)(agdaRTS.primIntegerFromString("0"))));
            }
          });
        }
      };
    };
  };
exports["≤⇒≤″"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Data_Nat_Base["_≤″_"]["less-than-or-equal"](z_jAgda_Agda_Builtin_Nat["_-_"](x1)(x0))(agdaRTS.primIntegerFromString("0"));
      };
    };
  };
exports["_<″?_"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary_Decidable_Core["map′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<ᵇ⇒<″"](x0)(x1))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Properties["T?"]((agdaRTS.uprimIntegerLessThan)(x0, x1)));
    };
  };
exports["_≤″?_"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](z_jAgda_Data_Nat_Base["_≤″_"]["less-than-or-equal"](x1)(agdaRTS.primIntegerFromString("0"))));
      } else {
        return exports["_<″?_"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))(x1);
      }
    };
  };
exports["_≥″?_"] = function (x0) {
    return function (x1) {
      return exports["_≤″?_"](x1)(x0);
    };
  };
exports["_>″?_"] = function (x0) {
    return function (x1) {
      return exports["_<″?_"](x1)(x0);
    };
  };
exports["≤‴⇒≤″"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "≤‴-refl": function (x3) {
            return z_jAgda_Data_Nat_Base["_≤″_"]["less-than-or-equal"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
          },
          "≤‴-step": function (x3, x4, x5) {
            return z_jAgda_Data_Nat_Base["_≤″_"]["less-than-or-equal"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), z_jAgda_Data_Nat_Base["_≤″_"]["k"](exports["_NameId 4742 6486258310496689873"]["ind"](x0)(x1)(x5))))(agdaRTS.primIntegerFromString("0"));
          }
        });
      };
    };
  };
exports["_NameId 4742 6486258310496689873"] = {};
exports["_NameId 4742 6486258310496689873"]["ind"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["≤‴⇒≤″"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0))(x1)(x2);
      };
    };
  };
exports["m≤‴m+k"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x2)) {
            return z_jAgda_Data_Nat_Base["_≤‴_"]["≤‴-refl"](agdaRTS.primIntegerFromString("0"));
          } else {
            return z_jAgda_Data_Nat_Base["_≤‴_"]["≤‴-step"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["m≤‴m+k"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x2, agdaRTS.primIntegerFromString("1")))(agdaRTS.primIntegerFromString("0")));
          }
        };
      };
    };
  };
exports["≤″⇒≤‴"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["less-than-or-equal"]({
          "less-than-or-equal": function (x3, x4) {
            return exports["m≤‴m+k"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(agdaRTS.primIntegerFromString("0"));
          }
        });
      };
    };
  };
exports["eq?"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Nullary_Decidable["_NameId 34 8078889156929755643"]["via-injection"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(exports["_≟_"]);
      };
    };
  };
exports["≤-steps"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3;
        };
      };
    };
  };
exports["n≤m+n"] = function (x0) {
    return function (x1) {
      return exports["m≤m+n"](x1)(agdaRTS.primIntegerFromString("0"));
    };
  };
exports["n≤m+n∸m"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return z_jAgda_Data_Nat_Base["_≤_"]["z≤n"](agdaRTS.primIntegerFromString("0"));
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return exports["≤-refl"](x1);
      } else {
        return z_jAgda_Data_Nat_Base["_≤_"]["s≤s"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["n≤m+n∸m"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["∣n-m∣≡[n∸m]∨[m∸n]"] = function (x0) {
    return function (x1) {
      return exports["≤-total"](x0)(x1)({
        "inj₁": function (x2) {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
        },
        "inj₂": function (x2) {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](z_jAgda_Relation_Binary_Reasoning_Base_Triple["begin-equality_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Reasoning_Base_Triple["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["≤-isPreorder"]))(z_jAgda_Agda_Builtin_Nat["_-_"](x0)(x1))))(agdaRTS.primIntegerFromString("0")));
        }
      });
    };
  };
exports["n∸m≤n"] = function (x0) {
    return function (x1) {
      return exports["m∸n≤m"](x1)(x0);
    };
  };
exports["_NameId 6 6486258310496689873"] = {};
exports["_NameId 6 6486258310496689873"]["_Absorbs_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["_DistributesOver_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["_DistributesOverʳ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["_DistributesOverˡ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Absorptive"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Associative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Commutative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Idempotent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Identity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["LeftIdentity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["LeftZero"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["RightIdentity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["RightZero"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Selective"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 6486258310496689873"]["Zero"] = agdaRTS.primIntegerFromString("0");
exports["suc-injective"] = agdaRTS.primIntegerFromString("0");
exports["≡ᵇ⇒≡"] = agdaRTS.primIntegerFromString("0");
exports["≡⇒≡ᵇ"] = agdaRTS.primIntegerFromString("0");
exports["≡-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["≟-diag"] = agdaRTS.primIntegerFromString("0");
exports["≡-isDecEquivalence"] = z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(exports["_≟_"]);
exports["≡-decSetoid"] = z_jAgda_Relation_Binary_Bundles["DecSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≡-isDecEquivalence"]);
exports["0≢1+n"] = agdaRTS.primIntegerFromString("0");
exports["1+n≢0"] = agdaRTS.primIntegerFromString("0");
exports["1+n≢n"] = agdaRTS.primIntegerFromString("0");
exports["<⇒<ᵇ"] = agdaRTS.primIntegerFromString("0");
exports["≤-antisym"] = agdaRTS.primIntegerFromString("0");
exports["≤-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["≤-isPreorder"] = z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(exports["≤-reflexive"])(exports["≤-trans"]);
exports["≤-isPartialOrder"] = z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["record"](exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"));
exports["≤-isTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["record"](exports["≤-isPartialOrder"])(exports["≤-total"]);
exports["≤-isDecTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["record"](exports["≤-isTotalOrder"])(exports["_≟_"])(exports["_≤?_"]);
exports["≤-preorder"] = z_jAgda_Relation_Binary_Bundles["Preorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"]);
exports["≤-poset"] = z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPartialOrder"]);
exports["≤-totalOrder"] = z_jAgda_Relation_Binary_Bundles["TotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isTotalOrder"]);
exports["≤-decTotalOrder"] = z_jAgda_Relation_Binary_Bundles["DecTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isDecTotalOrder"]);
exports["s≤s-injective"] = agdaRTS.primIntegerFromString("0");
exports["1+n≰n"] = agdaRTS.primIntegerFromString("0");
exports["n≤0⇒n≡0"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≢"] = agdaRTS.primIntegerFromString("0");
exports["≤⇒≯"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≱"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≯"] = agdaRTS.primIntegerFromString("0");
exports["≰⇒≮"] = agdaRTS.primIntegerFromString("0");
exports["<-≤-connex"] = z_jAgda_Relation_Binary_Consequences["_NameId 712 6863766767261122522"]["flip-Connex"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-<-connex"]);
exports[">-≥-connex"] = z_jAgda_Relation_Binary_Consequences["_NameId 712 6863766767261122522"]["flip-Connex"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≥->-connex"]);
exports["<-irrefl"] = agdaRTS.primIntegerFromString("0");
exports["<-asym"] = agdaRTS.primIntegerFromString("0");
exports["<-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["<-resp₂-≡"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4;
          };
        };
      };
    };
  })(function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4;
          };
        };
      };
    };
  });
exports["<-isStrictPartialOrder"] = z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(exports["<-trans"])(exports["<-resp₂-≡"]);
exports["<-isStrictTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(exports["<-trans"])(exports["<-cmp"]);
exports["<-strictPartialOrder"] = z_jAgda_Relation_Binary_Bundles["StrictPartialOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-isStrictPartialOrder"]);
exports["<-strictTotalOrder"] = z_jAgda_Relation_Binary_Bundles["StrictTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-isStrictTotalOrder"]);
exports["n≮n"] = agdaRTS.primIntegerFromString("0");
exports["m<n⇒n≢0"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1776 6486258310496689873"] = {};
exports["_NameId 1776 6486258310496689873"]["rec"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1806 6486258310496689873"] = {};
exports["_NameId 1806 6486258310496689873"]["rec"] = agdaRTS.primIntegerFromString("0");
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_<⟨_⟩_"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["_<⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-trans"])(z_jAgda_Relation_Binary_PropositionalEquality_Core["resp₂"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(exports["<-transˡ"])(agdaRTS.primIntegerFromString("0"));
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_≈˘⟨_⟩_"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["_≈˘⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_PropositionalEquality_Core["resp₂"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["_≤⟨_⟩_"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["_≤⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-transʳ"]);
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["IsEquality?"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["IsEquality?"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["IsStrict?"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["IsStrict?"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["begin_"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["begin_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<⇒≤"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["begin-equality_"] = agdaRTS.primIntegerFromString("0");
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["begin-strict_"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["begin-strict_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["extractEquality"] = agdaRTS.primIntegerFromString("0");
exports["≤-Reasoning"]["_NameId 1816 6486258310496689873"]["extractStrict"] = z_jAgda_Relation_Binary_Reasoning_Base_Triple["extractStrict"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["suc[pred[n]]≡n"] = agdaRTS.primIntegerFromString("0");
exports["+-suc"] = agdaRTS.primIntegerFromString("0");
exports["+-assoc"] = agdaRTS.primIntegerFromString("0");
exports["+-identityˡ"] = agdaRTS.primIntegerFromString("0");
exports["+-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["+-identity"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["+-comm"] = agdaRTS.primIntegerFromString("0");
exports["+-cancelˡ-≡"] = agdaRTS.primIntegerFromString("0");
exports["+-cancelʳ-≡"] = agdaRTS.primIntegerFromString("0");
exports["+-cancel-≡"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["+-isMagma"] = z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
exports["+-isSemigroup"] = z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["+-isMagma"])(agdaRTS.primIntegerFromString("0"));
exports["+-isCommutativeSemigroup"] = z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["record"](exports["+-isSemigroup"])(agdaRTS.primIntegerFromString("0"));
exports["+-0-isMonoid"] = z_jAgda_Algebra_Structures["IsMonoid"]["record"](exports["+-isSemigroup"])(exports["+-identity"]);
exports["+-0-isCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["record"](exports["+-0-isMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["+-rawMagma"] = z_jAgda_Algebra_Bundles["RawMagma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  });
exports["+-0-rawMonoid"] = z_jAgda_Algebra_Bundles["RawMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("0"));
exports["+-magma"] = z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(exports["+-isMagma"]);
exports["+-semigroup"] = z_jAgda_Algebra_Bundles["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(exports["+-isSemigroup"]);
exports["+-commutativeSemigroup"] = z_jAgda_Algebra_Bundles["CommutativeSemigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(exports["+-isCommutativeSemigroup"]);
exports["+-0-monoid"] = z_jAgda_Algebra_Bundles["Monoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("0"))(exports["+-0-isMonoid"]);
exports["+-0-commutativeMonoid"] = z_jAgda_Algebra_Bundles["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("0"))(exports["+-0-isCommutativeMonoid"]);
exports["m≢1+m+n"] = agdaRTS.primIntegerFromString("0");
exports["m≢1+n+m"] = agdaRTS.primIntegerFromString("0");
exports["m+1+n≢m"] = agdaRTS.primIntegerFromString("0");
exports["m+1+n≢0"] = agdaRTS.primIntegerFromString("0");
exports["m+n≡0⇒m≡0"] = agdaRTS.primIntegerFromString("0");
exports["m+n≡0⇒n≡0"] = agdaRTS.primIntegerFromString("0");
exports["+-cancel-≤"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["+-cancelˡ-≤"])(exports["+-cancelʳ-≤"]);
exports["+-cancel-<"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["+-cancelˡ-<"])(exports["+-cancelʳ-<"]);
exports["m+1+n≰m"] = agdaRTS.primIntegerFromString("0");
exports["m+n≮n"] = agdaRTS.primIntegerFromString("0");
exports["m+n≮m"] = agdaRTS.primIntegerFromString("0");
exports["*-suc"] = agdaRTS.primIntegerFromString("0");
exports["*-identityˡ"] = agdaRTS.primIntegerFromString("0");
exports["*-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["*-identity"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["*-zeroˡ"] = agdaRTS.primIntegerFromString("0");
exports["*-zeroʳ"] = agdaRTS.primIntegerFromString("0");
exports["*-zero"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["*-comm"] = agdaRTS.primIntegerFromString("0");
exports["*-distribʳ-+"] = agdaRTS.primIntegerFromString("0");
exports["*-distribˡ-+"] = agdaRTS.primIntegerFromString("0");
exports["*-distrib-+"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["*-assoc"] = agdaRTS.primIntegerFromString("0");
exports["*-isMagma"] = z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
exports["*-isSemigroup"] = z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["*-isMagma"])(agdaRTS.primIntegerFromString("0"));
exports["*-1-isMonoid"] = z_jAgda_Algebra_Structures["IsMonoid"]["record"](exports["*-isSemigroup"])(exports["*-identity"]);
exports["*-1-isCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["record"](exports["*-1-isMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["*-+-isSemiring"] = z_jAgda_Algebra_Structures["IsSemiring"]["record"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["record"](exports["+-0-isCommutativeMonoid"])(exports["*-1-isMonoid"])(exports["*-distrib-+"]))(exports["*-zero"]);
exports["*-+-isCommutativeSemiring"] = z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["record"](exports["*-+-isSemiring"])(agdaRTS.primIntegerFromString("0"));
exports["*-rawMagma"] = z_jAgda_Algebra_Bundles["RawMagma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  });
exports["*-1-rawMonoid"] = z_jAgda_Algebra_Bundles["RawMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("1"));
exports["*-magma"] = z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(exports["*-isMagma"]);
exports["*-semigroup"] = z_jAgda_Algebra_Bundles["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(exports["*-isSemigroup"]);
exports["*-1-monoid"] = z_jAgda_Algebra_Bundles["Monoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("1"))(exports["*-1-isMonoid"]);
exports["*-1-commutativeMonoid"] = z_jAgda_Algebra_Bundles["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("1"))(exports["*-1-isCommutativeMonoid"]);
exports["*-+-semiring"] = z_jAgda_Algebra_Bundles["Semiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("1"))(exports["*-+-isSemiring"]);
exports["*-+-commutativeSemiring"] = z_jAgda_Algebra_Bundles["CommutativeSemiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerPlus)(x0, x1);
    };
  })(function (x0) {
    return function (x1) {
      return (agdaRTS.uprimIntegerMultiply)(x0, x1);
    };
  })(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("1"))(exports["*-+-isCommutativeSemiring"]);
exports["*-cancelʳ-≡"] = agdaRTS.primIntegerFromString("0");
exports["*-cancelˡ-≡"] = agdaRTS.primIntegerFromString("0");
exports["m*n≡1⇒m≡1"] = agdaRTS.primIntegerFromString("0");
exports["m*n≡1⇒n≡1"] = agdaRTS.primIntegerFromString("0");
exports["*-cancel-<"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["*-cancelˡ-<"])(exports["*-cancelʳ-<"]);
exports["^-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["^-zeroˡ"] = agdaRTS.primIntegerFromString("0");
exports["^-distribˡ-+-*"] = agdaRTS.primIntegerFromString("0");
exports["^-*-assoc"] = agdaRTS.primIntegerFromString("0");
exports["m^n≡0⇒m≡0"] = agdaRTS.primIntegerFromString("0");
exports["⊔-assoc"] = agdaRTS.primIntegerFromString("0");
exports["⊔-identityˡ"] = agdaRTS.primIntegerFromString("0");
exports["⊔-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["⊔-identity"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["⊔-comm"] = agdaRTS.primIntegerFromString("0");
exports["⊔-idem"] = agdaRTS.primIntegerFromString("0");
exports["⊔-isMagma"] = z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
exports["⊔-isSemigroup"] = z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["⊔-isMagma"])(agdaRTS.primIntegerFromString("0"));
exports["⊔-isBand"] = z_jAgda_Algebra_Structures["IsBand"]["record"](exports["⊔-isSemigroup"])(agdaRTS.primIntegerFromString("0"));
exports["⊔-isSemilattice"] = z_jAgda_Algebra_Structures["IsSemilattice"]["record"](exports["⊔-isBand"])(agdaRTS.primIntegerFromString("0"));
exports["⊔-0-isMonoid"] = z_jAgda_Algebra_Structures["IsMonoid"]["record"](exports["⊔-isSemigroup"])(exports["⊔-identity"]);
exports["⊔-0-isCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["record"](exports["⊔-0-isMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["⊔-magma"] = z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊔-isMagma"]);
exports["⊔-semigroup"] = z_jAgda_Algebra_Bundles["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊔-isSemigroup"]);
exports["⊔-band"] = z_jAgda_Algebra_Bundles["Band"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊔-isBand"]);
exports["⊔-semilattice"] = z_jAgda_Algebra_Bundles["Semilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊔-isSemilattice"]);
exports["⊔-0-commutativeMonoid"] = z_jAgda_Algebra_Bundles["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(agdaRTS.primIntegerFromString("0"))(exports["⊔-0-isCommutativeMonoid"]);
exports["⊔-triangulate"] = agdaRTS.primIntegerFromString("0");
exports["m≤n⇒n⊔m≡n"] = agdaRTS.primIntegerFromString("0");
exports["m≤n⇒m⊔n≡n"] = agdaRTS.primIntegerFromString("0");
exports["+-distribˡ-⊔"] = agdaRTS.primIntegerFromString("0");
exports["+-distribʳ-⊔"] = agdaRTS.primIntegerFromString("0");
exports["+-distrib-⊔"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["⊓-assoc"] = agdaRTS.primIntegerFromString("0");
exports["⊓-zeroˡ"] = agdaRTS.primIntegerFromString("0");
exports["⊓-zeroʳ"] = agdaRTS.primIntegerFromString("0");
exports["⊓-zero"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["⊓-comm"] = agdaRTS.primIntegerFromString("0");
exports["⊓-idem"] = agdaRTS.primIntegerFromString("0");
exports["⊓-distribʳ-⊔"] = agdaRTS.primIntegerFromString("0");
exports["⊓-distribˡ-⊔"] = agdaRTS.primIntegerFromString("0");
exports["⊓-distrib-⊔"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["⊔-abs-⊓"] = agdaRTS.primIntegerFromString("0");
exports["⊓-abs-⊔"] = agdaRTS.primIntegerFromString("0");
exports["⊓-⊔-absorptive"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["⊓-isMagma"] = z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
exports["⊓-isSemigroup"] = z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["⊓-isMagma"])(agdaRTS.primIntegerFromString("0"));
exports["⊓-isBand"] = z_jAgda_Algebra_Structures["IsBand"]["record"](exports["⊓-isSemigroup"])(agdaRTS.primIntegerFromString("0"));
exports["⊓-isSemilattice"] = z_jAgda_Algebra_Structures["IsSemilattice"]["record"](exports["⊓-isBand"])(agdaRTS.primIntegerFromString("0"));
exports["⊔-⊓-isSemiringWithoutOne"] = z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["record"](exports["⊔-0-isCommutativeMonoid"])(exports["⊓-isSemigroup"])(exports["⊓-distrib-⊔"])(exports["⊓-zero"]);
exports["⊔-⊓-isCommutativeSemiringWithoutOne"] = z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["record"](exports["⊔-⊓-isSemiringWithoutOne"])(agdaRTS.primIntegerFromString("0"));
exports["⊓-⊔-isLattice"] = z_jAgda_Algebra_Structures["IsLattice"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["⊓-⊔-absorptive"]);
exports["⊓-⊔-isDistributiveLattice"] = z_jAgda_Algebra_Structures["IsDistributiveLattice"]["record"](exports["⊓-⊔-isLattice"])(agdaRTS.primIntegerFromString("0"));
exports["⊓-magma"] = z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊓_"])(exports["⊓-isMagma"]);
exports["⊓-semigroup"] = z_jAgda_Algebra_Bundles["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊔-isSemigroup"]);
exports["⊓-band"] = z_jAgda_Algebra_Bundles["Band"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊓_"])(exports["⊓-isBand"]);
exports["⊓-semilattice"] = z_jAgda_Algebra_Bundles["Semilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊓_"])(exports["⊓-isSemilattice"]);
exports["⊔-⊓-commutativeSemiringWithoutOne"] = z_jAgda_Algebra_Bundles["CommutativeSemiringWithoutOne"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊔_"])(z_jAgda_Data_Nat_Base["_⊓_"])(agdaRTS.primIntegerFromString("0"))(exports["⊔-⊓-isCommutativeSemiringWithoutOne"]);
exports["⊓-⊔-lattice"] = z_jAgda_Algebra_Bundles["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊓_"])(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊓-⊔-isLattice"]);
exports["⊓-⊔-distributiveLattice"] = z_jAgda_Algebra_Bundles["DistributiveLattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Nat_Base["_⊓_"])(z_jAgda_Data_Nat_Base["_⊔_"])(exports["⊓-⊔-isDistributiveLattice"]);
exports["⊓-triangulate"] = agdaRTS.primIntegerFromString("0");
exports["m≤n⇒m⊓n≡m"] = agdaRTS.primIntegerFromString("0");
exports["m≤n⇒n⊓m≡m"] = agdaRTS.primIntegerFromString("0");
exports["+-distribˡ-⊓"] = agdaRTS.primIntegerFromString("0");
exports["+-distribʳ-⊓"] = agdaRTS.primIntegerFromString("0");
exports["+-distrib-⊓"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["0∸n≡0"] = agdaRTS.primIntegerFromString("0");
exports["n∸n≡0"] = agdaRTS.primIntegerFromString("0");
exports["m≮m∸n"] = agdaRTS.primIntegerFromString("0");
exports["1+m≢m∸n"] = agdaRTS.primIntegerFromString("0");
exports["∸-cancelˡ-≡"] = agdaRTS.primIntegerFromString("0");
exports["m≤n⇒m∸n≡0"] = agdaRTS.primIntegerFromString("0");
exports["m>n⇒m∸n≢0"] = agdaRTS.primIntegerFromString("0");
exports["+-∸-comm"] = agdaRTS.primIntegerFromString("0");
exports["∸-+-assoc"] = agdaRTS.primIntegerFromString("0");
exports["+-∸-assoc"] = agdaRTS.primIntegerFromString("0");
exports["m+n∸n≡m"] = agdaRTS.primIntegerFromString("0");
exports["m+n∸m≡n"] = agdaRTS.primIntegerFromString("0");
exports["m+[n∸m]≡n"] = agdaRTS.primIntegerFromString("0");
exports["m∸n+n≡m"] = agdaRTS.primIntegerFromString("0");
exports["m∸[m∸n]≡n"] = agdaRTS.primIntegerFromString("0");
exports["[m+n]∸[m+o]≡n∸o"] = agdaRTS.primIntegerFromString("0");
exports["*-distribʳ-∸"] = agdaRTS.primIntegerFromString("0");
exports["*-distribˡ-∸"] = agdaRTS.primIntegerFromString("0");
exports["*-distrib-∸"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["even≢odd"] = agdaRTS.primIntegerFromString("0");
exports["m⊓n+n∸m≡n"] = agdaRTS.primIntegerFromString("0");
exports["[m∸n]⊓[n∸m]≡0"] = agdaRTS.primIntegerFromString("0");
exports["∸-distribˡ-⊓-⊔"] = agdaRTS.primIntegerFromString("0");
exports["∸-distribʳ-⊓"] = agdaRTS.primIntegerFromString("0");
exports["∸-distribˡ-⊔-⊓"] = agdaRTS.primIntegerFromString("0");
exports["∸-distribʳ-⊔"] = agdaRTS.primIntegerFromString("0");
exports["m≡n⇒∣m-n∣≡0"] = agdaRTS.primIntegerFromString("0");
exports["∣m-n∣≡0⇒m≡n"] = agdaRTS.primIntegerFromString("0");
exports["m≤n⇒∣n-m∣≡n∸m"] = agdaRTS.primIntegerFromString("0");
exports["∣n-n∣≡0"] = agdaRTS.primIntegerFromString("0");
exports["∣m-m+n∣≡n"] = agdaRTS.primIntegerFromString("0");
exports["∣m+n-m+o∣≡∣n-o|"] = agdaRTS.primIntegerFromString("0");
exports["∣-∣-identityˡ"] = agdaRTS.primIntegerFromString("0");
exports["∣-∣-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["∣-∣-identity"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["∣-∣-comm"] = agdaRTS.primIntegerFromString("0");
exports["*-distribˡ-∣-∣-aux"] = agdaRTS.primIntegerFromString("0");
exports["*-distribˡ-∣-∣"] = agdaRTS.primIntegerFromString("0");
exports["*-distribʳ-∣-∣"] = agdaRTS.primIntegerFromString("0");
exports["*-distrib-∣-∣"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≤′-step-injective"] = agdaRTS.primIntegerFromString("0");
exports["m<ᵇn⇒1+m+[n-1+m]≡n"] = agdaRTS.primIntegerFromString("0");
exports["m<ᵇ1+m+n"] = agdaRTS.primIntegerFromString("0");
exports["<″⇒<ᵇ"] = agdaRTS.primIntegerFromString("0");
exports["≤″-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["<″-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports[">″-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["≥″-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["_*-mono_"] = exports["*-mono-≤"];
exports["_+-mono_"] = exports["+-mono-≤"];
exports["+-right-identity"] = agdaRTS.primIntegerFromString("0");
exports["*-right-zero"] = agdaRTS.primIntegerFromString("0");
exports["distribʳ-*-+"] = agdaRTS.primIntegerFromString("0");
exports["*-distrib-∸ʳ"] = agdaRTS.primIntegerFromString("0");
exports["cancel-+-left"] = agdaRTS.primIntegerFromString("0");
exports["cancel-+-left-≤"] = exports["+-cancelˡ-≤"];
exports["cancel-*-right"] = agdaRTS.primIntegerFromString("0");
exports["cancel-*-right-≤"] = exports["*-cancelʳ-≤"];
exports["strictTotalOrder"] = exports["<-strictTotalOrder"];
exports["isCommutativeSemiring"] = exports["*-+-isCommutativeSemiring"];
exports["commutativeSemiring"] = exports["*-+-commutativeSemiring"];
exports["isDistributiveLattice"] = exports["⊓-⊔-isDistributiveLattice"];
exports["distributiveLattice"] = exports["⊓-⊔-distributiveLattice"];
exports["⊔-⊓-0-isSemiringWithoutOne"] = exports["⊔-⊓-isSemiringWithoutOne"];
exports["⊔-⊓-0-isCommutativeSemiringWithoutOne"] = exports["⊔-⊓-isCommutativeSemiringWithoutOne"];
exports["⊔-⊓-0-commutativeSemiringWithoutOne"] = exports["⊔-⊓-commutativeSemiringWithoutOne"];
exports["¬i+1+j≤i"] = agdaRTS.primIntegerFromString("0");
exports["i∸k∸j+j∸k≡i+j∸k"] = agdaRTS.primIntegerFromString("0");
exports["im≡jm+n⇒[i∸j]m≡n"] = agdaRTS.primIntegerFromString("0");
exports["≤+≢⇒<"] = exports["≤∧≢⇒<"];
exports["≤-irrelevance"] = agdaRTS.primIntegerFromString("0");
exports["<-irrelevance"] = agdaRTS.primIntegerFromString("0");
exports["i+1+j≢i"] = agdaRTS.primIntegerFromString("0");
exports["i+j≡0⇒i≡0"] = agdaRTS.primIntegerFromString("0");
exports["i+j≡0⇒j≡0"] = agdaRTS.primIntegerFromString("0");
exports["i+1+j≰i"] = agdaRTS.primIntegerFromString("0");
exports["i*j≡0⇒i≡0∨j≡0"] = exports["m*n≡0⇒m≡0∨n≡0"];
exports["i*j≡1⇒i≡1"] = agdaRTS.primIntegerFromString("0");
exports["i*j≡1⇒j≡1"] = agdaRTS.primIntegerFromString("0");
exports["i^j≡0⇒i≡0"] = agdaRTS.primIntegerFromString("0");
exports["i^j≡1⇒j≡0∨i≡1"] = exports["m^n≡1⇒n≡0∨m≡1"];
exports["[i+j]∸[i+k]≡j∸k"] = agdaRTS.primIntegerFromString("0");
exports["m≢0⇒suc[pred[m]]≡m"] = agdaRTS.primIntegerFromString("0");
exports["n≡m⇒∣n-m∣≡0"] = agdaRTS.primIntegerFromString("0");
exports["∣n-m∣≡0⇒n≡m"] = agdaRTS.primIntegerFromString("0");
exports["∣n-m∣≡n∸m⇒m≤n"] = exports["∣m-n∣≡m∸n⇒n≤m"];
exports["∣n-n+m∣≡m"] = agdaRTS.primIntegerFromString("0");
exports["∣n+m-n+o∣≡∣m-o|"] = agdaRTS.primIntegerFromString("0");
exports["n∸m≤∣n-m∣"] = exports["m∸n≤∣m-n∣"];
exports["∣n-m∣≤n⊔m"] = exports["∣m-n∣≤m⊔n"];
exports["+-*-suc"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");

