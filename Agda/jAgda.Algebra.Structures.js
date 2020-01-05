var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_FunctionProperties_Consequences = require("jAgda.Algebra.FunctionProperties.Consequences");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["IsMagma"] = {};
exports["IsMagma"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsMagma"]["∙-cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsMagma"]["_NameId 90 11802035531597312119"] = {};
exports["IsMagma"]["_NameId 90 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](x5));
            };
          };
        };
      };
    };
  };
exports["IsMagma"]["_NameId 90 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](x0));
  };
exports["IsMagma"]["_NameId 90 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](x5));
            };
          };
        };
      };
    };
  };
exports["IsMagma"]["_NameId 90 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](x0));
  };
exports["IsMagma"]["_NameId 90 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](x0));
  };
exports["IsMagma"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](x5));
            };
          };
        };
      };
    };
  };
exports["IsMagma"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-cong"](x5)(x6)(x6)(x7)(x8)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](x5))(x6))(x9);
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
exports["IsMagma"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-cong"](x5)(x7)(x8)(x6)(x6)(x9)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](x5))(x6));
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
exports["IsSemigroup"] = {};
exports["IsSemigroup"]["isMagma"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsSemigroup"]["assoc"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"] = {};
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](x0));
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](x0)));
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](x5));
            };
          };
        };
      };
    };
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](x0)));
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](x0)));
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](x0));
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](x5));
            };
          };
        };
      };
    };
  };
exports["IsSemigroup"]["_NameId 126 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](x5));
            };
          };
        };
      };
    };
  };
exports["IsBand"] = {};
exports["IsBand"]["isSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsBand"]["idem"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsBand"]["_NameId 162 11802035531597312119"] = {};
exports["IsBand"]["_NameId 162 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsBand"]["isSemigroup"](x0));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x0)));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x0));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x0))));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x0))));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x0))));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x0)));
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsBand"]["_NameId 162 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemigroup"] = {};
exports["IsCommutativeSemigroup"]["isSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsCommutativeSemigroup"]["comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"] = {};
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0)));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0))));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0))));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0))));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x0)));
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemigroup"]["_NameId 202 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsCommutativeSemigroup"]["isSemigroup"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsSemilattice"] = {};
exports["IsSemilattice"]["isBand"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsSemilattice"]["comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"] = {};
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0)));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["idem"] = function (x0) {
    return exports["IsBand"]["idem"](exports["IsSemilattice"]["isBand"](x0));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0))));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0)));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x5)))));
            };
          };
        };
      };
    };
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0)))));
  };
exports["IsMagma"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isEquivalence": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "∙-cong": x1
      };
    };
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x5)))));
            };
          };
        };
      };
    };
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0)))));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0)))));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x0))));
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsSemilattice"]["_NameId 242 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsBand"]["isSemigroup"](exports["IsSemilattice"]["isBand"](x5))));
            };
          };
        };
      };
    };
  };
exports["IsSelectiveMagma"] = {};
exports["IsSelectiveMagma"]["isMagma"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsSelectiveMagma"]["sel"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"] = {};
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSelectiveMagma"]["isMagma"](x0));
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSelectiveMagma"]["isMagma"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSelectiveMagma"]["isMagma"](x0)));
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSelectiveMagma"]["isMagma"](x5)));
            };
          };
        };
      };
    };
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSelectiveMagma"]["isMagma"](x5));
            };
          };
        };
      };
    };
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSelectiveMagma"]["isMagma"](x0)));
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSelectiveMagma"]["isMagma"](x0)));
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSelectiveMagma"]["isMagma"](x0));
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSelectiveMagma"]["isMagma"](x5));
            };
          };
        };
      };
    };
  };
exports["IsSelectiveMagma"]["_NameId 286 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSelectiveMagma"]["isMagma"](x5));
            };
          };
        };
      };
    };
  };
exports["IsMonoid"] = {};
exports["IsMonoid"]["isSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsMonoid"]["identity"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"] = {};
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](x0));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x0)));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x0));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x0))));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x0))));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x0))));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x0)));
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsMonoid"]["_NameId 326 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsMonoid"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsMonoid"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"] = {};
exports["IsCommutativeMonoid"]["isMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsCommutativeMonoid"]["comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"] = {};
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0)));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](x0));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0))));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0)));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0)))));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0)))));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0)))));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x0))));
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["_NameId 374 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeMonoid"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsCommutativeSemigroup"]["record"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](x6)))(exports["IsCommutativeMonoid"]["comm"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"] = {};
exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsIdempotentCommutativeMonoid"]["idem"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"] = {};
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))))));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))))));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)))));
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["_NameId 428 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"] = {};
exports["IsBoundedLattice"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))));
  };
exports["IsBoundedLattice"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0));
  };
exports["IsBoundedLattice"]["idem"] = function (x0) {
    return exports["IsIdempotentCommutativeMonoid"]["idem"](x0);
  };
exports["IsBoundedLattice"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)));
  };
exports["IsBoundedLattice"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["isCommutativeMonoid"] = function (x0) {
    return exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0);
  };
exports["IsBoundedLattice"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)))));
  };
exports["IsBoundedLattice"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))));
  };
exports["IsBoundedLattice"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0));
  };
exports["IsBoundedLattice"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)));
  };
exports["IsBoundedLattice"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["IsBoundedLattice"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6))))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["IsBoundedLattice"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["IsBoundedLattice"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x0)))));
  };
exports["IsBoundedLattice"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedLattice"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"] = {};
exports["IsGroup"]["isMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsGroup"]["inverse"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsGroup"]["⁻¹-cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"] = {};
exports["IsGroup"]["_NameId 546 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0)));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](x0));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0))));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0)));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0)))));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0)))));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0)))));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x0))));
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_NameId 546 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["_-_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x4(x8)(x6(x9));
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
exports["IsGroup"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsGroup"]["inverse"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsGroup"]["inverse"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Algebra_FunctionProperties_Consequences["_NameId 216 1033178761192418056"]["assoc+id+invʳ⇒invˡ-unique"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7)))))(x4)(x6)(x5)(exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7)))))(exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7))))(exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](x7)))(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsGroup"]["inverse"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsGroup"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Algebra_FunctionProperties_Consequences["_NameId 216 1033178761192418056"]["assoc+id+invˡ⇒invʳ-unique"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7)))))(x4)(x6)(x5)(exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7)))))(exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](x7))))(exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](x7)))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsGroup"]["inverse"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"] = {};
exports["IsAbelianGroup"]["isGroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsAbelianGroup"]["comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"] = {};
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["_-_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x4(x8)(x6(x9));
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
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0)));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["inverse"] = function (x0) {
    return exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](x0));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0)))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0)));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0))))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0))))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0))))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(exports["IsAbelianGroup"]["isGroup"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(exports["IsAbelianGroup"]["isGroup"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["⁻¹-cong"] = function (x0) {
    return exports["IsGroup"]["⁻¹-cong"](exports["IsAbelianGroup"]["isGroup"](x0));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x0)))));
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 624 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsCommutativeMonoid"]["record"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](x7)))(exports["IsAbelianGroup"]["comm"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsAbelianGroup"]["_NameId 676 11802035531597312119"] = {};
exports["IsAbelianGroup"]["_NameId 676 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"] = {};
exports["IsLattice"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x1;
      }
    });
  };
exports["IsLattice"]["∨-comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x2;
      }
    });
  };
exports["IsLattice"]["∨-assoc"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x3;
      }
    });
  };
exports["IsLattice"]["∨-cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x4;
      }
    });
  };
exports["IsLattice"]["∧-comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x5;
      }
    });
  };
exports["IsLattice"]["∧-assoc"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x6;
      }
    });
  };
exports["IsLattice"]["∧-cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x7;
      }
    });
  };
exports["IsLattice"]["absorptive"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x8;
      }
    });
  };
exports["IsLattice"]["_NameId 722 11802035531597312119"] = {};
exports["IsLattice"]["_NameId 722 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLattice"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 722 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](x0));
  };
exports["IsLattice"]["_NameId 722 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLattice"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 722 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsLattice"]["isEquivalence"](x0));
  };
exports["IsLattice"]["_NameId 722 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsLattice"]["isEquivalence"](x0));
  };
exports["IsLattice"]["∨-absorbs-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsLattice"]["absorptive"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["∧-absorbs-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsLattice"]["absorptive"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["∧-congˡ"] = function (x0) {
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
                        return exports["IsLattice"]["∧-cong"](x6)(x7)(x7)(x8)(x9)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](x6))(x7))(x10);
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
exports["IsLattice"]["∧-congʳ"] = function (x0) {
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
                        return exports["IsLattice"]["∧-cong"](x6)(x8)(x9)(x7)(x7)(x10)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](x6))(x7));
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
exports["IsLattice"]["∨-congˡ"] = function (x0) {
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
                        return exports["IsLattice"]["∨-cong"](x6)(x7)(x7)(x8)(x9)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](x6))(x7))(x10);
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
exports["IsLattice"]["∨-congʳ"] = function (x0) {
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
                        return exports["IsLattice"]["∨-cong"](x6)(x8)(x9)(x7)(x7)(x10)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](x6))(x7));
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
exports["IsDistributiveLattice"] = {};
exports["IsDistributiveLattice"]["isLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsDistributiveLattice"]["∨-distribʳ-∧"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsSemigroup"]["record"] = function (x0) {
    return function (x1) {
      return {
        "assoc": x1,
        "isMagma": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"] = {};
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["absorptive"] = function (x0) {
    return exports["IsLattice"]["absorptive"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](x0)));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](x0)));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](x0)));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∧-absorbs-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsLattice"]["absorptive"](exports["IsDistributiveLattice"]["isLattice"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∧-assoc"] = function (x0) {
    return exports["IsLattice"]["∧-assoc"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∧-comm"] = function (x0) {
    return exports["IsLattice"]["∧-comm"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∧-cong"] = function (x0) {
    return exports["IsLattice"]["∧-cong"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∧-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∧-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∨-absorbs-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsLattice"]["absorptive"](exports["IsDistributiveLattice"]["isLattice"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∨-assoc"] = function (x0) {
    return exports["IsLattice"]["∨-assoc"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∨-comm"] = function (x0) {
    return exports["IsLattice"]["∨-comm"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∨-cong"] = function (x0) {
    return exports["IsLattice"]["∨-cong"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∨-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsLattice"]["∨-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 772 11802035531597312119"]["∨-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["∨-∧-distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDistributiveLattice"]["∨-distribʳ-∧"](x6);
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"] = {};
exports["IsNearSemiring"]["+-isMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x1;
      }
    });
  };
exports["IsNearSemiring"]["*-isSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x2;
      }
    });
  };
exports["IsNearSemiring"]["distribʳ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["IsNearSemiring"]["zeroˡ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"] = {};
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0)));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0))));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](x0));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0)));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0))));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0)))));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0)))));
  };
exports["IsNearSemiring"]["_NameId 844 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](x0)))));
  };
exports["IsNearSemiring"]["_NameId 878 11802035531597312119"] = {};
exports["IsNearSemiring"]["_NameId 878 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsNearSemiring"]["*-isSemigroup"](x0));
  };
exports["IsNearSemiring"]["_NameId 878 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](x0)));
  };
exports["IsNearSemiring"]["_NameId 878 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 878 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsNearSemiring"]["_NameId 878 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](x0));
  };
exports["IsSemiringWithoutOne"] = {};
exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x1;
      }
    });
  };
exports["IsSemiringWithoutOne"]["*-isSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x2;
      }
    });
  };
exports["IsSemiringWithoutOne"]["distrib"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["IsSemiringWithoutOne"]["zero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["IsSemiringWithoutOne"]["_NameId 920 11802035531597312119"] = {};
exports["IsSemiringWithoutOne"]["_NameId 920 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x0));
  };
exports["IsSemiringWithoutOne"]["_NameId 920 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 920 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x0));
  };
exports["IsSemiringWithoutOne"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutOne"]["zero"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["zero"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsNearSemiring"]["record"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7)))(exports["IsSemiringWithoutOne"]["*-isSemigroup"](x7))(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["distrib"](x7)))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutOne"]["zero"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"] = {};
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["assoc"](exports["IsSemiringWithoutOne"]["*-isSemigroup"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsSemiringWithoutOne"]["*-isSemigroup"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["isMagma"](exports["IsSemiringWithoutOne"]["*-isSemigroup"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["*-isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemiringWithoutOne"]["*-isSemigroup"](x7);
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["identity"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["distrib"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["_NameId 934 11802035531597312119"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"] = {};
exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsCommutativeSemiringWithoutOne"]["*-comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"] = {};
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["assoc"](exports["IsSemiringWithoutOne"]["*-isSemigroup"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsSemiringWithoutOne"]["*-isSemigroup"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsNearSemiring"]["*-isSemigroup"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["isMagma"](exports["IsSemiringWithoutOne"]["*-isSemigroup"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["*-isSemigroup"] = function (x0) {
    return exports["IsSemiringWithoutOne"]["*-isSemigroup"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["*-isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemiringWithoutOne"]["*-isSemigroup"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x0)));
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBand"]["record"] = function (x0) {
    return function (x1) {
      return {
        "idem": x1,
        "isSemigroup": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["identity"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["+-isCommutativeMonoid"] = function (x0) {
    return exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x0)));
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["distrib"] = function (x0) {
    return exports["IsSemiringWithoutOne"]["distrib"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["distrib"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsNearSemiring"]["+-isMonoid"](exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)))))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["zero"] = function (x0) {
    return exports["IsSemiringWithoutOne"]["zero"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["zero"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["_NameId 1004 11802035531597312119"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutOne"]["zero"](exports["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"] = {};
exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsSemiringWithoutAnnihilatingZero"]["distrib"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsSemiringWithoutAnnihilatingZero"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"] = {};
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0)))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0)));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0)));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0)))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0))))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0))))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1106 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](x0))))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"] = {};
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x0)));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x0))));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x0));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x0)));
  };
exports["IsSemiringWithoutAnnihilatingZero"]["_NameId 1146 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](x0));
  };
exports["IsSemiring"] = {};
exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsSemiring"]["zero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"] = {};
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["*-isMonoid"] = function (x0) {
    return exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0))))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["+-isCommutativeMonoid"] = function (x0) {
    return exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["distrib"] = function (x0) {
    return exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0))))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)))))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)))))));
  };
exports["IsSemiring"]["_NameId 1192 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x0)))))));
  };
exports["IsSemiring"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsSemiringWithoutOne"]["record"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))(exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8))))(exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](x8)))(exports["IsSemiring"]["zero"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1262 11802035531597312119"] = {};
exports["IsSemiring"]["_NameId 1262 11802035531597312119"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1262 11802035531597312119"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["zero"](exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsSemiring"]["_NameId 1262 11802035531597312119"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutOne"]["zero"](exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"] = {};
exports["IsCommutativeSemiring"]["isSemiring"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsCommutativeSemiring"]["*-comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"] = {};
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["*-isMonoid"] = function (x0) {
    return exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsCommutativeMonoid"]["comm"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))));
  };
exports["IsCommutativeSemigroup"]["record"] = function (x0) {
    return function (x1) {
      return {
        "comm": x1,
        "isSemigroup": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8)))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8)))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["+-isCommutativeMonoid"] = function (x0) {
    return exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["distrib"] = function (x0) {
    return exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0)))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiring"]["isSemiring"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiring"]["isSemiring"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8)))))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsCommutativeMonoid"]["isMonoid"](exports["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x0))))))));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["zero"] = function (x0) {
    return exports["IsSemiring"]["zero"](exports["IsCommutativeSemiring"]["isSemiring"](x0));
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutOne"]["zero"](exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiring"]["isSemiring"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["_NameId 1296 11802035531597312119"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutOne"]["zero"](exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiring"]["isSemiring"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["isCommutativeSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsCommutativeSemiringWithoutOne"]["record"](exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeSemiring"]["isSemiring"](x8)))(exports["IsCommutativeSemiring"]["*-comm"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsCommutativeSemiring"]["*-isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsCommutativeMonoid"]["record"](exports["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsCommutativeSemiring"]["isSemiring"](x8))))(exports["IsCommutativeSemiring"]["*-comm"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsRing"] = {};
exports["IsRing"]["+-isAbelianGroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x1;
      }
    });
  };
exports["IsRing"]["*-isMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x2;
      }
    });
  };
exports["IsRing"]["distrib"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["IsRing"]["zero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"] = {};
exports["IsRing"]["_NameId 1418 11802035531597312119"]["_-_"] = function (x0) {
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
                          return x4(x10)(x6(x11));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsAbelianGroup"]["comm"](exports["IsRing"]["+-isAbelianGroup"](x0));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0))))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9))))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9))))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9)))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9)))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["+-isAbelianGroup"](x9));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["+-isAbelianGroup"](x9)));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isGroup"] = function (x0) {
    return exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["⁻¹-cong"] = function (x0) {
    return exports["IsGroup"]["⁻¹-cong"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["inverse"] = function (x0) {
    return exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0))))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9)))))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)))))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9)))))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9))))));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)))))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x0)))))));
  };
exports["IsRing"]["_NameId 1418 11802035531597312119"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x7)(x6)(exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9)));
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
exports["IsRing"]["_NameId 1418 11802035531597312119"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x7)(x6)(exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](x9)));
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
exports["IsRing"]["_NameId 1476 11802035531597312119"] = {};
exports["IsRing"]["_NameId 1476 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](x0)));
  };
exports["IsRing"]["_NameId 1476 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](x0))));
  };
exports["IsRing"]["_NameId 1476 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](x9))));
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
exports["IsRing"]["_NameId 1476 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](x9))));
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
exports["IsRing"]["_NameId 1476 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsRing"]["*-isMonoid"](x0));
  };
exports["IsRing"]["_NameId 1476 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsRing"]["*-isMonoid"](x9)));
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
exports["IsRing"]["_NameId 1476 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsRing"]["*-isMonoid"](x9)));
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
exports["IsRing"]["_NameId 1476 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](x0)));
  };
exports["IsRing"]["_NameId 1476 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](x0));
  };
exports["IsRing"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsRing"]["zero"](x9));
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
exports["IsRing"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsRing"]["zero"](x9));
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
exports["IsRing"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSemiringWithoutAnnihilatingZero"]["record"](exports["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["+-isAbelianGroup"](x9)))(exports["IsRing"]["*-isMonoid"](x9))(exports["IsRing"]["distrib"](x9));
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
exports["IsRing"]["isSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSemiring"]["record"](exports["IsRing"]["isSemiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9))(exports["IsRing"]["zero"](x9));
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
exports["IsRing"]["_NameId 1504 11802035531597312119"] = {};
exports["IsRing"]["_NameId 1504 11802035531597312119"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9))));
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
exports["IsRing"]["_NameId 1504 11802035531597312119"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9))));
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
exports["IsRing"]["_NameId 1504 11802035531597312119"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)));
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
exports["IsRing"]["_NameId 1504 11802035531597312119"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9));
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
exports["IsCommutativeRing"] = {};
exports["IsCommutativeRing"]["isRing"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsCommutativeRing"]["*-comm"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"] = {};
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["_-_"] = function (x0) {
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
                          return x4(x10)(x6(x11));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x0))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x0)))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x9)))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x9)))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x0)));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x9))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x9))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x0))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["*-isMonoid"] = function (x0) {
    return exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x0));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x0)));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["assoc"] = function (x0) {
    return exports["IsSemigroup"]["assoc"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["comm"] = function (x0) {
    return exports["IsAbelianGroup"]["comm"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0)));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["∙-cong"] = function (x0) {
    return exports["IsMagma"]["∙-cong"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0)))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9)))))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9)))))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["identity"] = function (x0) {
    return exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0)))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMonoid"]["identity"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["+-isAbelianGroup"] = function (x0) {
    return exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9)));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isGroup"] = function (x0) {
    return exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0)));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isMagma"] = function (x0) {
    return exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isMonoid"] = function (x0) {
    return exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isSemigroup"] = function (x0) {
    return exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0)))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["⁻¹-cong"] = function (x0) {
    return exports["IsGroup"]["⁻¹-cong"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["inverse"] = function (x0) {
    return exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9)))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsGroup"]["inverse"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9)))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["distrib"] = function (x0) {
    return exports["IsRing"]["distrib"](exports["IsCommutativeRing"]["isRing"](x0));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9)))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9)))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0)))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))))))));
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
exports["IsSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "comm": x1,
        "isBand": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsRing"]["isSemiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9)));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))))))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9)))))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsMagma"]["isEquivalence"](exports["IsSemigroup"]["isMagma"](exports["IsMonoid"]["isSemigroup"](exports["IsGroup"]["isMonoid"](exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x0))))))));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x7)(x6)(exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x7)(x6)(exports["IsAbelianGroup"]["isGroup"](exports["IsRing"]["+-isAbelianGroup"](exports["IsCommutativeRing"]["isRing"](x9))));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["zero"] = function (x0) {
    return exports["IsRing"]["zero"](exports["IsCommutativeRing"]["isRing"](x0));
  };
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsRing"]["zero"](exports["IsCommutativeRing"]["isRing"](x9)));
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
exports["IsCommutativeRing"]["_NameId 1544 11802035531597312119"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsRing"]["zero"](exports["IsCommutativeRing"]["isRing"](x9)));
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
exports["IsCommutativeRing"]["*-isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCommutativeMonoid"]["record"](exports["IsRing"]["*-isMonoid"](exports["IsCommutativeRing"]["isRing"](x9)))(exports["IsCommutativeRing"]["*-comm"](x9));
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
exports["IsCommutativeRing"]["isCommutativeSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCommutativeSemiring"]["record"](exports["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isRing"](x9)))(exports["IsCommutativeRing"]["*-comm"](x9));
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
exports["IsCommutativeRing"]["_NameId 1648 11802035531597312119"] = {};
exports["IsCommutativeRing"]["_NameId 1648 11802035531597312119"]["isCommutativeSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCommutativeSemiring"]["isCommutativeSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCommutativeRing"]["isCommutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9));
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
exports["IsBooleanAlgebra"] = {};
exports["IsBooleanAlgebra"]["isDistributiveLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x1;
      }
    });
  };
exports["IsBooleanAlgebra"]["∨-complementʳ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x2;
      }
    });
  };
exports["IsBooleanAlgebra"]["∧-complementʳ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["IsBooleanAlgebra"]["¬-cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"] = {};
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["absorptive"] = function (x0) {
    return exports["IsLattice"]["absorptive"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["isEquivalence"] = function (x0) {
    return exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["isLattice"] = function (x0) {
    return exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9))));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0))));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9))));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0))));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsLattice"]["isEquivalence"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0))));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∧-absorbs-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsLattice"]["absorptive"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9))));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∧-assoc"] = function (x0) {
    return exports["IsLattice"]["∧-assoc"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∧-comm"] = function (x0) {
    return exports["IsLattice"]["∧-comm"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∧-cong"] = function (x0) {
    return exports["IsLattice"]["∧-cong"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∧-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9)));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∧-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9)));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-absorbs-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsLattice"]["absorptive"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9))));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-assoc"] = function (x0) {
    return exports["IsLattice"]["∨-assoc"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-comm"] = function (x0) {
    return exports["IsLattice"]["∨-comm"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-cong"] = function (x0) {
    return exports["IsLattice"]["∨-cong"](exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsLattice"]["∨-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9)));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9)));
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
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-distribʳ-∧"] = function (x0) {
    return exports["IsDistributiveLattice"]["∨-distribʳ-∧"](exports["IsBooleanAlgebra"]["isDistributiveLattice"](x0));
  };
exports["IsBooleanAlgebra"]["_NameId 1690 11802035531597312119"]["∨-∧-distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsDistributiveLattice"]["∨-∧-distribʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBooleanAlgebra"]["isDistributiveLattice"](x9));
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
exports["IsSelectiveMagma"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMagma": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "sel": x1
      };
    };
  };
exports["IsMonoid"]["record"] = function (x0) {
    return function (x1) {
      return {
        "identity": x1,
        "isSemigroup": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsCommutativeMonoid"]["record"] = function (x0) {
    return function (x1) {
      return {
        "comm": x1,
        "isMonoid": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsIdempotentCommutativeMonoid"]["record"] = function (x0) {
    return function (x1) {
      return {
        "idem": x1,
        "isCommutativeMonoid": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsGroup"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "inverse": x1,
          "isMonoid": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          },
          "⁻¹-cong": x2
        };
      };
    };
  };
exports["IsAbelianGroup"]["record"] = function (x0) {
    return function (x1) {
      return {
        "comm": x1,
        "isGroup": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsLattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return {
                    "absorptive": x7,
                    "isEquivalence": x0,
                    "record": function (x8) {
                      return x8["record"](x0, x1, x2, x3, x4, x5, x6, x7);
                    },
                    "∧-assoc": x5,
                    "∧-comm": x4,
                    "∧-cong": x6,
                    "∨-assoc": x2,
                    "∨-comm": x1,
                    "∨-cong": x3
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isLattice": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "∨-distribʳ-∧": x1
      };
    };
  };
exports["IsNearSemiring"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "*-isSemigroup": x1,
            "+-isMonoid": x0,
            "distribʳ": x2,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            },
            "zeroˡ": x3
          };
        };
      };
    };
  };
exports["IsSemiringWithoutOne"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "*-isSemigroup": x1,
            "+-isCommutativeMonoid": x0,
            "distrib": x2,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            },
            "zero": x3
          };
        };
      };
    };
  };
exports["IsCommutativeSemiringWithoutOne"]["record"] = function (x0) {
    return function (x1) {
      return {
        "*-comm": x1,
        "isSemiringWithoutOne": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsSemiringWithoutAnnihilatingZero"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "*-isMonoid": x1,
          "+-isCommutativeMonoid": x0,
          "distrib": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsSemiring"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isSemiringWithoutAnnihilatingZero": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "zero": x1
      };
    };
  };
exports["IsCommutativeSemiring"]["record"] = function (x0) {
    return function (x1) {
      return {
        "*-comm": x1,
        "isSemiring": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsRing"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "*-isMonoid": x1,
            "+-isAbelianGroup": x0,
            "distrib": x2,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            },
            "zero": x3
          };
        };
      };
    };
  };
exports["IsCommutativeRing"]["record"] = function (x0) {
    return function (x1) {
      return {
        "*-comm": x1,
        "isRing": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsBooleanAlgebra"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "isDistributiveLattice": x0,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            },
            "¬-cong": x3,
            "∧-complementʳ": x2,
            "∨-complementʳ": x1
          };
        };
      };
    };
  };
exports["_NameId 12 11802035531597312119"] = {};
exports["_NameId 12 11802035531597312119"]["_Absorbs_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["_DistributesOver_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["_DistributesOverʳ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["_DistributesOverˡ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Absorptive"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Associative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Commutative"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Congruent₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Congruent₂"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Idempotent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Identity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Inverse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["LeftCongruent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["LeftIdentity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["LeftInverse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["LeftZero"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["RightCongruent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["RightIdentity"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["RightInverse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["RightZero"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Selective"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 12 11802035531597312119"]["Zero"] = agdaRTS.primIntegerFromString("0");
exports["IsBoundedLattice"] = agdaRTS.primIntegerFromString("0");

