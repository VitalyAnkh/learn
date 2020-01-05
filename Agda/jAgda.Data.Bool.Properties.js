var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Algebra_Properties_BooleanAlgebra = require("jAgda.Algebra.Properties.BooleanAlgebra");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Data_Bool_Base = require("jAgda.Data.Bool.Base");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Function_Equivalence = require("jAgda.Function.Equivalence");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Definitions = require("jAgda.Relation.Binary.Definitions");
var z_jAgda_Relation_Binary_PropositionalEquality = require("jAgda.Relation.Binary.PropositionalEquality");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");

exports["_≟_"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
            },
            "true": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x0)(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
            }
          });
        },
        "true": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x1)(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
            },
            "true": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x1)(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
            }
          });
        }
      });
    };
  };
exports["≤-reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Data_Bool_Base["_≤_"]["b≤b"](agdaRTS.primIntegerFromString("0"));
      };
    };
  };
exports["≤-refl"] = function (x0) {
    return exports["≤-reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
  };
exports["≤-trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x3({
              "b≤b": function (x5) {
                return x4;
              },
              "f≤t": function () {
                return (agdaRTS.primSeq)(x4, x3);
              }
            });
          };
        };
      };
    };
  };
exports["≤-minimum"] = function (x0) {
    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return z_jAgda_Data_Bool_Base["_≤_"]["b≤b"](agdaRTS.primIntegerFromString("0"));
      },
      "true": function () {
        return z_jAgda_Data_Bool_Base["_≤_"]["f≤t"];
      }
    });
  };
exports["≤-maximum"] = function (x0) {
    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return z_jAgda_Data_Bool_Base["_≤_"]["f≤t"];
      },
      "true": function () {
        return z_jAgda_Data_Bool_Base["_≤_"]["b≤b"](agdaRTS.primIntegerFromString("0"));
      }
    });
  };
exports["≤-total"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](exports["≤-minimum"](x1));
        },
        "true": function () {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](exports["≤-maximum"](x1));
        }
      });
    };
  };
exports["_≤?_"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](exports["≤-minimum"](x1)));
        },
        "true": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x1)(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
            },
            "true": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x1)(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](z_jAgda_Data_Bool_Base["_≤_"]["b≤b"](agdaRTS.primIntegerFromString("0"))));
            }
          });
        }
      });
    };
  };
exports["<-cmp"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Relation_Binary_Definitions["Tri"]["tri≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            },
            "true": function () {
              return z_jAgda_Relation_Binary_Definitions["Tri"]["tri<"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            }
          });
        },
        "true": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Relation_Binary_Definitions["Tri"]["tri>"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            },
            "true": function () {
              return z_jAgda_Relation_Binary_Definitions["Tri"]["tri≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            }
          });
        }
      });
    };
  };
exports["_<?_"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x1)(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
            },
            "true": function () {
              return z_jAgda_Relation_Nullary["Dec"]["_because_"](x1)(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
            }
          });
        },
        "true": function () {
          return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
        }
      });
    };
  };
exports["∨-sel"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
        },
        "true": function () {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
        }
      });
    };
  };
exports["∧-sel"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
        },
        "true": function () {
          return z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"](agdaRTS.primIntegerFromString("0"));
        }
      });
    };
  };
exports["T-≡"] = function (x0) {
    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
      },
      "true": function () {
        return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x1) {
          return agdaRTS.primIntegerFromString("0");
        })(function (x1) {
          return agdaRTS.primIntegerFromString("0");
        });
      }
    });
  };
exports["T-not-≡"] = function (x0) {
    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x1) {
          return agdaRTS.primIntegerFromString("0");
        })(function (x1) {
          return agdaRTS.primIntegerFromString("0");
        });
      },
      "true": function () {
        return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
      }
    });
  };
exports["T-∧"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"]);
        },
        "true": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"]);
            },
            "true": function () {
              return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x2) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
              })(function (x2) {
                return agdaRTS.primIntegerFromString("0");
              });
            }
          });
        }
      });
    };
  };
exports["T-∨"] = function (x0) {
    return function (x1) {
      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
        "false": function () {
          return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x1, {
            "false": function () {
              return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"])(z_jAgda_Data_Sum_Base["[_,_]"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x2) {
                return x2;
              })(function (x2) {
                return x2;
              }));
            },
            "true": function () {
              return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Sum_Base["_⊎_"]["inj₂"])(function (x2) {
                return agdaRTS.primIntegerFromString("0");
              });
            }
          });
        },
        "true": function () {
          return z_jAgda_Function_Equivalence["equivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"])(function (x2) {
            return agdaRTS.primIntegerFromString("0");
          });
        }
      });
    };
  };
exports["T?"] = function (x0) {
    return z_jAgda_Relation_Nullary["Dec"]["_because_"](x0)((function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0"));
      },
      "true": function () {
        return z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0"));
      }
    }));
  };
exports["_NameId 6 17386132922877323332"] = {};
exports["_NameId 6 17386132922877323332"]["_Absorbs_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["_DistributesOver_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["_DistributesOverʳ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["_DistributesOverˡ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Absorptive"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Associative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Commutative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Idempotent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Identity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Inverse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Involutive"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["LeftIdentity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["LeftInverse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["LeftZero"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["RightIdentity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["RightInverse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["RightZero"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Selective"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 17386132922877323332"]["Zero"] = agdaRTS.primIntegerFromString("0");
exports["≡-setoid"] = z_jAgda_Relation_Binary_PropositionalEquality["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≡-decSetoid"] = z_jAgda_Relation_Binary_PropositionalEquality["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["_≟_"]);
exports["≤-antisym"] = agdaRTS.primIntegerFromString("0");
exports["≤-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["≤-isPreorder"] = z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(exports["≤-reflexive"])(exports["≤-trans"]);
exports["≤-isPartialOrder"] = z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["record"](exports["≤-isPreorder"])(agdaRTS.primIntegerFromString("0"));
exports["≤-isTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["record"](exports["≤-isPartialOrder"])(exports["≤-total"]);
exports["≤-isDecTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["record"](exports["≤-isTotalOrder"])(exports["_≟_"])(exports["_≤?_"]);
exports["≤-poset"] = z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPartialOrder"]);
exports["≤-preorder"] = z_jAgda_Relation_Binary_Bundles["Preorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPreorder"]);
exports["≤-totalOrder"] = z_jAgda_Relation_Binary_Bundles["TotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isTotalOrder"]);
exports["≤-decTotalOrder"] = z_jAgda_Relation_Binary_Bundles["DecTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isDecTotalOrder"]);
exports["<-irrefl"] = agdaRTS.primIntegerFromString("0");
exports["<-asym"] = agdaRTS.primIntegerFromString("0");
exports["<-trans"] = agdaRTS.primIntegerFromString("0");
exports["<-transʳ"] = agdaRTS.primIntegerFromString("0");
exports["<-transˡ"] = agdaRTS.primIntegerFromString("0");
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
exports["<-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["<-isStrictPartialOrder"] = z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-resp₂-≡"]);
exports["<-isStrictTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(exports["<-cmp"]);
exports["<-strictPartialOrder"] = z_jAgda_Relation_Binary_Bundles["StrictPartialOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-isStrictPartialOrder"]);
exports["<-strictTotalOrder"] = z_jAgda_Relation_Binary_Bundles["StrictTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-isStrictTotalOrder"]);
exports["∨-assoc"] = agdaRTS.primIntegerFromString("0");
exports["∨-comm"] = agdaRTS.primIntegerFromString("0");
exports["∨-identityˡ"] = agdaRTS.primIntegerFromString("0");
exports["∨-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["∨-identity"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["∨-zeroˡ"] = agdaRTS.primIntegerFromString("0");
exports["∨-zeroʳ"] = agdaRTS.primIntegerFromString("0");
exports["∨-zero"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["∨-inverseˡ"] = agdaRTS.primIntegerFromString("0");
exports["∨-inverseʳ"] = agdaRTS.primIntegerFromString("0");
exports["∨-inverse"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["∨-idem"] = agdaRTS.primIntegerFromString("0");
exports["∨-isMagma"] = z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
exports["∨-magma"] = z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(exports["∨-isMagma"]);
exports["∨-isSemigroup"] = z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["∨-isMagma"])(agdaRTS.primIntegerFromString("0"));
exports["∨-semigroup"] = z_jAgda_Algebra_Bundles["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(exports["∨-isSemigroup"]);
exports["∨-isBand"] = z_jAgda_Algebra_Structures["IsBand"]["record"](exports["∨-isSemigroup"])(agdaRTS.primIntegerFromString("0"));
exports["∨-band"] = z_jAgda_Algebra_Bundles["Band"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(exports["∨-isBand"]);
exports["∨-isSemilattice"] = z_jAgda_Algebra_Structures["IsSemilattice"]["record"](exports["∨-isBand"])(agdaRTS.primIntegerFromString("0"));
exports["∨-semilattice"] = z_jAgda_Algebra_Bundles["Semilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(exports["∨-isSemilattice"]);
exports["∨-isMonoid"] = z_jAgda_Algebra_Structures["IsMonoid"]["record"](exports["∨-isSemigroup"])(exports["∨-identity"]);
exports["∨-isCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["record"](exports["∨-isMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["∨-commutativeMonoid"] = z_jAgda_Algebra_Bundles["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(exports["∨-isCommutativeMonoid"]);
exports["∨-isIdempotentCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["record"](exports["∨-isCommutativeMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["∨-idempotentCommutativeMonoid"] = z_jAgda_Algebra_Bundles["IdempotentCommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(exports["∨-isIdempotentCommutativeMonoid"]);
exports["∧-assoc"] = agdaRTS.primIntegerFromString("0");
exports["∧-comm"] = agdaRTS.primIntegerFromString("0");
exports["∧-identityˡ"] = agdaRTS.primIntegerFromString("0");
exports["∧-identityʳ"] = agdaRTS.primIntegerFromString("0");
exports["∧-identity"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["∧-zeroˡ"] = agdaRTS.primIntegerFromString("0");
exports["∧-zeroʳ"] = agdaRTS.primIntegerFromString("0");
exports["∧-zero"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x0) {
    return agdaRTS.primIntegerFromString("0");
  })(agdaRTS.primIntegerFromString("0"));
exports["∧-inverseˡ"] = agdaRTS.primIntegerFromString("0");
exports["∧-inverseʳ"] = agdaRTS.primIntegerFromString("0");
exports["∧-inverse"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["∧-idem"] = agdaRTS.primIntegerFromString("0");
exports["∧-distribˡ-∨"] = agdaRTS.primIntegerFromString("0");
exports["∧-distribʳ-∨"] = agdaRTS.primIntegerFromString("0");
exports["∧-distrib-∨"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["∨-distribˡ-∧"] = agdaRTS.primIntegerFromString("0");
exports["∨-distribʳ-∧"] = agdaRTS.primIntegerFromString("0");
exports["∨-distrib-∧"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["∧-abs-∨"] = agdaRTS.primIntegerFromString("0");
exports["∨-abs-∧"] = agdaRTS.primIntegerFromString("0");
exports["∨-∧-absorptive"] = z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["∧-isMagma"] = z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"));
exports["∧-magma"] = z_jAgda_Algebra_Bundles["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(exports["∧-isMagma"]);
exports["∧-isSemigroup"] = z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["∧-isMagma"])(agdaRTS.primIntegerFromString("0"));
exports["∧-semigroup"] = z_jAgda_Algebra_Bundles["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(exports["∧-isSemigroup"]);
exports["∧-isBand"] = z_jAgda_Algebra_Structures["IsBand"]["record"](exports["∧-isSemigroup"])(agdaRTS.primIntegerFromString("0"));
exports["∧-band"] = z_jAgda_Algebra_Bundles["Band"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(exports["∧-isBand"]);
exports["∧-isSemilattice"] = z_jAgda_Algebra_Structures["IsSemilattice"]["record"](exports["∧-isBand"])(agdaRTS.primIntegerFromString("0"));
exports["∧-semilattice"] = z_jAgda_Algebra_Bundles["Semilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(exports["∧-isSemilattice"]);
exports["∧-isMonoid"] = z_jAgda_Algebra_Structures["IsMonoid"]["record"](exports["∧-isSemigroup"])(exports["∧-identity"]);
exports["∧-isCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["record"](exports["∧-isMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["∧-commutativeMonoid"] = z_jAgda_Algebra_Bundles["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(exports["∧-isCommutativeMonoid"]);
exports["∧-isIdempotentCommutativeMonoid"] = z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["record"](exports["∧-isCommutativeMonoid"])(agdaRTS.primIntegerFromString("0"));
exports["∧-idempotentCommutativeMonoid"] = z_jAgda_Algebra_Bundles["IdempotentCommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(exports["∧-isIdempotentCommutativeMonoid"]);
exports["∨-∧-isSemiring"] = z_jAgda_Algebra_Structures["IsSemiring"]["record"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["record"](exports["∨-isCommutativeMonoid"])(exports["∧-isMonoid"])(exports["∧-distrib-∨"]))(exports["∧-zero"]);
exports["∨-∧-isCommutativeSemiring"] = z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["record"](exports["∨-∧-isSemiring"])(agdaRTS.primIntegerFromString("0"));
exports["∨-∧-commutativeSemiring"] = z_jAgda_Algebra_Bundles["CommutativeSemiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Data_Bool_Base["_∧_"])(z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(exports["∨-∧-isCommutativeSemiring"]);
exports["∧-∨-isSemiring"] = z_jAgda_Algebra_Structures["IsSemiring"]["record"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["record"](exports["∧-isCommutativeMonoid"])(exports["∨-isMonoid"])(exports["∨-distrib-∧"]))(exports["∨-zero"]);
exports["∧-∨-isCommutativeSemiring"] = z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["record"](exports["∧-∨-isSemiring"])(agdaRTS.primIntegerFromString("0"));
exports["∧-∨-commutativeSemiring"] = z_jAgda_Algebra_Bundles["CommutativeSemiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∧_"])(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(exports["∧-∨-isCommutativeSemiring"]);
exports["∨-∧-isLattice"] = z_jAgda_Algebra_Structures["IsLattice"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-∧-absorptive"]);
exports["∨-∧-lattice"] = z_jAgda_Algebra_Bundles["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Data_Bool_Base["_∧_"])(exports["∨-∧-isLattice"]);
exports["∨-∧-isDistributiveLattice"] = z_jAgda_Algebra_Structures["IsDistributiveLattice"]["record"](exports["∨-∧-isLattice"])(agdaRTS.primIntegerFromString("0"));
exports["∨-∧-distributiveLattice"] = z_jAgda_Algebra_Bundles["DistributiveLattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Data_Bool_Base["_∧_"])(exports["∨-∧-isDistributiveLattice"]);
exports["∨-∧-isBooleanAlgebra"] = z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["record"](exports["∨-∧-isDistributiveLattice"])(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["∨-∧-booleanAlgebra"] = z_jAgda_Algebra_Bundles["BooleanAlgebra"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_Bool_Base["_∨_"])(z_jAgda_Data_Bool_Base["_∧_"])(z_jAgda_Data_Bool_Base["not"])(z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(exports["∨-∧-isBooleanAlgebra"]);
exports["xor-is-ok"] = agdaRTS.primIntegerFromString("0");
exports["xor-∧-commutativeRing"] = z_jAgda_Algebra_Properties_BooleanAlgebra["XorRing"]["commutativeRing"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-∧-booleanAlgebra"])(z_jAgda_Data_Bool_Base["_xor_"])(agdaRTS.primIntegerFromString("0"));
exports["not-involutive"] = agdaRTS.primIntegerFromString("0");
exports["not-injective"] = agdaRTS.primIntegerFromString("0");
exports["not-¬"] = agdaRTS.primIntegerFromString("0");
exports["¬-not"] = agdaRTS.primIntegerFromString("0");
exports["⇔→≡"] = agdaRTS.primIntegerFromString("0");
exports["T-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["T?-diag"] = agdaRTS.primIntegerFromString("0");
exports["push-function-into-if"] = agdaRTS.primIntegerFromString("0");
exports["∧-∨-distˡ"] = agdaRTS.primIntegerFromString("0");
exports["∧-∨-distʳ"] = agdaRTS.primIntegerFromString("0");
exports["distrib-∧-∨"] = exports["∧-distrib-∨"];
exports["∨-∧-distˡ"] = agdaRTS.primIntegerFromString("0");
exports["∨-∧-distʳ"] = agdaRTS.primIntegerFromString("0");
exports["∨-∧-distrib"] = exports["∨-distrib-∧"];
exports["∨-∧-abs"] = agdaRTS.primIntegerFromString("0");
exports["∧-∨-abs"] = agdaRTS.primIntegerFromString("0");
exports["not-∧-inverseˡ"] = agdaRTS.primIntegerFromString("0");
exports["not-∧-inverseʳ"] = agdaRTS.primIntegerFromString("0");
exports["not-∧-inverse"] = exports["∧-inverse"];
exports["not-∨-inverseˡ"] = agdaRTS.primIntegerFromString("0");
exports["not-∨-inverseʳ"] = agdaRTS.primIntegerFromString("0");
exports["not-∨-inverse"] = exports["∨-inverse"];
exports["isCommutativeSemiring-∨-∧"] = exports["∨-∧-isCommutativeSemiring"];
exports["commutativeSemiring-∨-∧"] = exports["∨-∧-commutativeSemiring"];
exports["isCommutativeSemiring-∧-∨"] = exports["∧-∨-isCommutativeSemiring"];
exports["commutativeSemiring-∧-∨"] = exports["∧-∨-commutativeSemiring"];
exports["isBooleanAlgebra"] = exports["∨-∧-isBooleanAlgebra"];
exports["booleanAlgebra"] = exports["∨-∧-booleanAlgebra"];
exports["commutativeRing-xor-∧"] = exports["xor-∧-commutativeRing"];
exports["proof-irrelevance"] = agdaRTS.primIntegerFromString("0");
exports["T-irrelevance"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");

