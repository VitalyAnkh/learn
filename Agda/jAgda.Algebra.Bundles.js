var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["RawMagma"] = {};
exports["RawMagma"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "Carrier": x0,
          "_∙_": x2,
          "_≈_": x1,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["RawMagma"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["Magma"] = {};
exports["Magma"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["Magma"]["isMagma"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["Magma"]["_NameId 52 5645577459263225835"] = {};
exports["Magma"]["_NameId 52 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](exports["Magma"]["isMagma"](x0));
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](exports["Magma"]["isMagma"](x2)));
      };
    };
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](exports["Magma"]["isMagma"](x0)));
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](exports["Magma"]["isMagma"](x2)));
      };
    };
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Magma"]["isMagma"](x2));
      };
    };
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](exports["Magma"]["isMagma"](x0)));
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](exports["Magma"]["isMagma"](x0)));
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](exports["Magma"]["isMagma"](x0));
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Magma"]["isMagma"](x2));
      };
    };
  };
exports["Magma"]["_NameId 52 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Magma"]["isMagma"](x2));
      };
    };
  };
exports["Magma"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawMagma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Magma"]["_∙_"](x2));
      };
    };
  };
exports["Magma"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∙_": x2,
            "_≈_": x1,
            "isMagma": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["Semigroup"] = {};
exports["Semigroup"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["Semigroup"]["isSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"] = {};
exports["Semigroup"]["_NameId 102 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](exports["Semigroup"]["isSemigroup"](x0));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x0)));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x0));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x2))));
      };
    };
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x0))));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x2))));
      };
    };
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x2)));
      };
    };
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x0))));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x0))));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x0)));
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x2)));
      };
    };
  };
exports["Semigroup"]["_NameId 102 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x2)));
      };
    };
  };
exports["Semigroup"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["_∙_"](x2))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](exports["Semigroup"]["isSemigroup"](x2)));
      };
    };
  };
exports["Semigroup"]["_NameId 130 5645577459263225835"] = {};
exports["Semigroup"]["_NameId 130 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Band"] = {};
exports["Band"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["Band"]["isBand"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["Band"]["_NameId 160 5645577459263225835"] = {};
exports["Band"]["_NameId 160 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0)));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["idem"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBand"]["idem"](exports["Band"]["isBand"](x0));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0))));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0)));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x2)))));
      };
    };
  };
exports["Band"]["_NameId 160 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0)))));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x2)))));
      };
    };
  };
exports["Band"]["_NameId 160 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x2))));
      };
    };
  };
exports["Band"]["_NameId 160 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0)))));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0)))));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x0))));
  };
exports["Band"]["_NameId 160 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x2))));
      };
    };
  };
exports["Band"]["_NameId 160 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x2))));
      };
    };
  };
exports["Band"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Band"]["_∙_"](x2))(z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](exports["Band"]["isBand"](x2)));
      };
    };
  };
exports["Band"]["_NameId 192 5645577459263225835"] = {};
exports["Band"]["_NameId 192 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Band"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Band"]["_NameId 192 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Band"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeSemigroup"] = {};
exports["CommutativeSemigroup"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["CommutativeSemigroup"]["isCommutativeSemigroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"] = {};
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0)));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["comm"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0))));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0)));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x2)))));
      };
    };
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0)))));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x2)))));
      };
    };
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x2))));
      };
    };
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0)))));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0)))));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x0))));
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x2))));
      };
    };
  };
exports["CommutativeSemigroup"]["_NameId 224 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x2))));
      };
    };
  };
exports["CommutativeSemigroup"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemigroup"]["_∙_"](x2))(z_jAgda_Algebra_Structures["IsCommutativeSemigroup"]["isSemigroup"](exports["CommutativeSemigroup"]["isCommutativeSemigroup"](x2)));
      };
    };
  };
exports["CommutativeSemigroup"]["_NameId 256 5645577459263225835"] = {};
exports["CommutativeSemigroup"]["_NameId 256 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemigroup"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemigroup"]["_NameId 256 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemigroup"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Semilattice"] = {};
exports["Semilattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["Semilattice"]["isSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"] = {};
exports["Semilattice"]["_NameId 288 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0))));
  };
exports["Semigroup"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∙_": x2,
            "_≈_": x1,
            "isSemigroup": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemilattice"]["comm"](exports["Semilattice"]["isSemilattice"](x0));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["idem"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBand"]["idem"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0)));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["isBand"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0)))));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0))));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x2))))));
      };
    };
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0)));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0))))));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x2))))));
      };
    };
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x2)))));
      };
    };
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0))))));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0))))));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x0)))));
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x2)))));
      };
    };
  };
exports["Semilattice"]["_NameId 288 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsBand"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x2)))));
      };
    };
  };
exports["Semilattice"]["band"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Band"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semilattice"]["_∧_"](x2))(z_jAgda_Algebra_Structures["IsSemilattice"]["isBand"](exports["Semilattice"]["isSemilattice"](x2)));
      };
    };
  };
exports["Semilattice"]["_NameId 324 5645577459263225835"] = {};
exports["Semilattice"]["_NameId 324 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Band"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semilattice"]["band"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Semilattice"]["_NameId 324 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Band"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semilattice"]["band"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Semilattice"]["_NameId 324 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Band"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semilattice"]["band"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["SelectiveMagma"] = {};
exports["SelectiveMagma"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["SelectiveMagma"]["isSelectiveMagma"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"] = {};
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x0)));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x0));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x2))));
      };
    };
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x0))));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x2))));
      };
    };
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["sel"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSelectiveMagma"]["sel"](exports["SelectiveMagma"]["isSelectiveMagma"](x0));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x2)));
      };
    };
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x0))));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x0))));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x0)));
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x2)));
      };
    };
  };
exports["SelectiveMagma"]["_NameId 358 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x2)));
      };
    };
  };
exports["SelectiveMagma"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SelectiveMagma"]["_∙_"](x2))(z_jAgda_Algebra_Structures["IsSelectiveMagma"]["isMagma"](exports["SelectiveMagma"]["isSelectiveMagma"](x2)));
      };
    };
  };
exports["SelectiveMagma"]["_NameId 386 5645577459263225835"] = {};
exports["SelectiveMagma"]["_NameId 386 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SelectiveMagma"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["RawMonoid"] = {};
exports["RawMonoid"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["RawMonoid"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["RawMonoid"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawMagma"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawMonoid"]["_∙_"](x2));
      };
    };
  };
exports["Monoid"] = {};
exports["Monoid"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x3;
      }
    });
  };
exports["Monoid"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["Monoid"]["isMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["Monoid"]["_NameId 448 5645577459263225835"] = {};
exports["Monoid"]["_NameId 448 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0)));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](exports["Monoid"]["isMonoid"](x0));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](exports["Monoid"]["isMonoid"](x2)));
      };
    };
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](exports["Monoid"]["isMonoid"](x2)));
      };
    };
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0))));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0)));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x2)))));
      };
    };
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0)))));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x2)))));
      };
    };
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x2))));
      };
    };
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0)))));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0)))));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x0))));
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x2))));
      };
    };
  };
exports["Monoid"]["_NameId 448 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x2))));
      };
    };
  };
exports["Monoid"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["_∙_"](x2))(z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](exports["Monoid"]["isMonoid"](x2)));
      };
    };
  };
exports["Monoid"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["_∙_"](x2))(exports["Monoid"]["ε"](x2));
      };
    };
  };
exports["Monoid"]["_NameId 486 5645577459263225835"] = {};
exports["Monoid"]["_NameId 486 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Monoid"]["_NameId 486 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeMonoid"] = {};
exports["CommutativeMonoid"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x3;
      }
    });
  };
exports["CommutativeMonoid"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["CommutativeMonoid"]["isCommutativeMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"] = {};
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0));
  };
exports["Band"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∙_": x2,
            "_≈_": x1,
            "isBand": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0)));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["isCommutativeMonoid"](x2));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0)))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2))))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0)));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2))))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2)))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0))))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x0)))));
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2)))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 522 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2)))));
      };
    };
  };
exports["CommutativeMonoid"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["_∙_"](x2))(exports["CommutativeMonoid"]["ε"](x2))(z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](exports["CommutativeMonoid"]["isCommutativeMonoid"](x2)));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 564 5645577459263225835"] = {};
exports["CommutativeMonoid"]["_NameId 564 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 564 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 564 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeMonoid"]["_NameId 564 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["IdempotentCommutativeMonoid"] = {};
exports["IdempotentCommutativeMonoid"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x3;
      }
    });
  };
exports["IdempotentCommutativeMonoid"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"] = {};
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["idem"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["idem"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2))))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))))));
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2))))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 604 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2))))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["_∙_"](x2))(exports["IdempotentCommutativeMonoid"]["ε"](x2))(z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 650 5645577459263225835"] = {};
exports["IdempotentCommutativeMonoid"]["_NameId 650 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 650 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 650 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 650 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["_NameId 650 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["BoundedLattice"] = {};
exports["BoundedLattice"]["_∙_"] = function (x0) {
    return exports["IdempotentCommutativeMonoid"]["_∙_"](x0);
  };
exports["BoundedLattice"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))));
  };
exports["BoundedLattice"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)));
  };
exports["BoundedLattice"]["commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["BoundedLattice"]["idem"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["idem"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0));
  };
exports["BoundedLattice"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))));
  };
exports["BoundedLattice"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))));
      };
    };
  };
exports["BoundedLattice"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))));
      };
    };
  };
exports["BoundedLattice"]["isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0));
  };
exports["BoundedLattice"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)));
      };
    };
  };
exports["BoundedLattice"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))))));
  };
exports["BoundedLattice"]["isIdempotentCommutativeMonoid"] = function (x0) {
    return exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0);
  };
exports["BoundedLattice"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))));
  };
exports["BoundedLattice"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)));
  };
exports["BoundedLattice"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))))));
      };
    };
  };
exports["BoundedLattice"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))));
  };
exports["BoundedLattice"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["BoundedLattice"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["BoundedLattice"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["BoundedLattice"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["BoundedLattice"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))))));
  };
exports["BoundedLattice"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2)))))));
      };
    };
  };
exports["BoundedLattice"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IdempotentCommutativeMonoid"]["commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["BoundedLattice"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2))))));
      };
    };
  };
exports["BoundedLattice"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))))));
  };
exports["BoundedLattice"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0)))))));
  };
exports["BoundedLattice"]["ε"] = function (x0) {
    return exports["IdempotentCommutativeMonoid"]["ε"](x0);
  };
exports["BoundedLattice"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x0))))));
  };
exports["BoundedLattice"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2))))));
      };
    };
  };
exports["BoundedLattice"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsIdempotentCommutativeMonoid"]["isCommutativeMonoid"](exports["IdempotentCommutativeMonoid"]["isIdempotentCommutativeMonoid"](x2))))));
      };
    };
  };
exports["RawGroup"] = {};
exports["RawGroup"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x3;
      }
    });
  };
exports["RawGroup"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["RawGroup"]["_⁻¹"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["RawGroup"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawGroup"]["_∙_"](x2))(exports["RawGroup"]["ε"](x2));
      };
    };
  };
exports["RawGroup"]["_NameId 768 5645577459263225835"] = {};
exports["RawGroup"]["_NameId 768 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawMonoid"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawGroup"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemigroup"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∙_": x2,
            "_≈_": x1,
            "isCommutativeSemigroup": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["Group"] = {};
exports["Group"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x3;
      }
    });
  };
exports["Group"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["Group"]["_⁻¹"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["Group"]["isGroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["Group"]["_NameId 806 5645577459263225835"] = {};
exports["Group"]["_NameId 806 5645577459263225835"]["_-_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["Group"]["_∙_"](x2)(x3)(exports["Group"]["_⁻¹"](x2)(x4));
          };
        };
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0)));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2))));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2))));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["inverse"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["inverse"](exports["Group"]["isGroup"](x0));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](exports["Group"]["isGroup"](x2)));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](exports["Group"]["isGroup"](x2)));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0)))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2))))));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0)));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0))))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2))))));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2)))));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0))))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0))))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["_∙_"](x2))(exports["Group"]["ε"](x2))(exports["Group"]["_⁻¹"](x2))(exports["Group"]["isGroup"](x2));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["_∙_"](x2))(exports["Group"]["ε"](x2))(exports["Group"]["_⁻¹"](x2))(exports["Group"]["isGroup"](x2));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["⁻¹-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["⁻¹-cong"](exports["Group"]["isGroup"](x0));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x0)))));
  };
exports["Group"]["_NameId 806 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2)))));
      };
    };
  };
exports["Group"]["_NameId 806 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2)))));
      };
    };
  };
exports["Group"]["rawGroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawGroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["_∙_"](x2))(exports["Group"]["ε"](x2))(exports["Group"]["_⁻¹"](x2));
      };
    };
  };
exports["Group"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["_∙_"](x2))(exports["Group"]["ε"](x2))(z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](exports["Group"]["isGroup"](x2)));
      };
    };
  };
exports["Group"]["_NameId 860 5645577459263225835"] = {};
exports["Group"]["_NameId 860 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Group"]["_NameId 860 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Group"]["_NameId 860 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Group"]["_NameId 860 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["AbelianGroup"] = {};
exports["AbelianGroup"]["_∙_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x3;
      }
    });
  };
exports["AbelianGroup"]["ε"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["AbelianGroup"]["_⁻¹"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["AbelianGroup"]["isAbelianGroup"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"] = {};
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["_-_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["AbelianGroup"]["_∙_"](x2)(x3)(exports["AbelianGroup"]["_⁻¹"](x2)(x4));
          };
        };
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsAbelianGroup"]["comm"](exports["AbelianGroup"]["isAbelianGroup"](x0));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["inverse"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["isAbelianGroup"](x2));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["isAbelianGroup"](x2)));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0))))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isGroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)))))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)))))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)))))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2))))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)))))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)))))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["_∙_"](x2))(exports["AbelianGroup"]["ε"](x2))(exports["AbelianGroup"]["_⁻¹"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["_∙_"](x2))(exports["AbelianGroup"]["ε"](x2))(exports["AbelianGroup"]["_⁻¹"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["⁻¹-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["⁻¹-cong"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0)));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x0))))));
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2))))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 904 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2))))));
      };
    };
  };
exports["AbelianGroup"]["group"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Group"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["_∙_"](x2))(exports["AbelianGroup"]["ε"](x2))(exports["AbelianGroup"]["_⁻¹"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](exports["AbelianGroup"]["isAbelianGroup"](x2)));
      };
    };
  };
exports["AbelianGroup"]["_NameId 964 5645577459263225835"] = {};
exports["AbelianGroup"]["_NameId 964 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 964 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["AbelianGroup"]["_NameId 964 5645577459263225835"]["rawGroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Group"]["rawGroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["AbelianGroup"]["_NameId 964 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["AbelianGroup"]["_NameId 964 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["AbelianGroup"]["_NameId 964 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Group"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["AbelianGroup"]["commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["_∙_"](x2))(exports["AbelianGroup"]["ε"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["AbelianGroup"]["isAbelianGroup"](x2)));
      };
    };
  };
exports["Lattice"] = {};
exports["Lattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x3;
      }
    });
  };
exports["Lattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["Lattice"]["isLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"] = {};
exports["Lattice"]["_NameId 1010 5645577459263225835"]["absorptive"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x0)));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x0)));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x0)));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∧-absorbs-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](exports["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∧-assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∧-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∧-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∧-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x2));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∧-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x2));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∨-absorbs-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](exports["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∨-assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-assoc"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∨-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∨-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∨-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∨-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x2));
      };
    };
  };
exports["Lattice"]["_NameId 1010 5645577459263225835"]["∨-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x2));
      };
    };
  };
exports["Lattice"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](exports["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["Semilattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∧_": x2,
            "_≈_": x1,
            "isSemilattice": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["DistributiveLattice"] = {};
exports["DistributiveLattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x3;
      }
    });
  };
exports["DistributiveLattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["DistributiveLattice"]["isDistributiveLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"] = {};
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["absorptive"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["isLattice"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2))));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0))));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2))));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0))));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0))));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∧-absorbs-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2))));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∧-assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∧-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∧-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∧-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2)));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∧-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2)));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-absorbs-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2))));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-assoc"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0)));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∨-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2)));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2)));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-distribʳ-∧"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-distribʳ-∧"](exports["DistributiveLattice"]["isDistributiveLattice"](x0));
  };
exports["DistributiveLattice"]["_NameId 1082 5645577459263225835"]["∨-∧-distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-∧-distribʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["isDistributiveLattice"](x2));
      };
    };
  };
exports["DistributiveLattice"]["lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["_∨_"](x2))(exports["DistributiveLattice"]["_∧_"](x2))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x2)));
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1130 5645577459263225835"] = {};
exports["DistributiveLattice"]["_NameId 1130 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["NearSemiring"] = {};
exports["NearSemiring"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x3;
      }
    });
  };
exports["NearSemiring"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["NearSemiring"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["NearSemiring"]["isNearSemiring"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"] = {};
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x0)));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x0))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x2))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x2))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x0)));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["*-isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x0));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0)))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2)))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2)))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0)));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["+-isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0)));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["distribʳ"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsNearSemiring"]["distribʳ"](exports["NearSemiring"]["isNearSemiring"](x0));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0)))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2))))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0))))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2))))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2)))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0))))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x0))))));
  };
exports["NearSemiring"]["_NameId 1168 5645577459263225835"]["zeroˡ"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsNearSemiring"]["zeroˡ"](exports["NearSemiring"]["isNearSemiring"](x0));
  };
exports["NearSemiring"]["+-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["_+_"](x2))(exports["NearSemiring"]["0#"](x2))(z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](exports["NearSemiring"]["isNearSemiring"](x2)));
      };
    };
  };
exports["NearSemiring"]["_NameId 1222 5645577459263225835"] = {};
exports["NearSemiring"]["_NameId 1222 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["NearSemiring"]["_NameId 1222 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["NearSemiring"]["_NameId 1222 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["NearSemiring"]["_NameId 1222 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["NearSemiring"]["*-semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["_*_"](x2))(z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](exports["NearSemiring"]["isNearSemiring"](x2)));
      };
    };
  };
exports["NearSemiring"]["_NameId 1234 5645577459263225835"] = {};
exports["NearSemiring"]["_NameId 1234 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["NearSemiring"]["_NameId 1234 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutOne"] = {};
exports["SemiringWithoutOne"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x3;
      }
    });
  };
exports["SemiringWithoutOne"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["SemiringWithoutOne"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["SemiringWithoutOne"]["isSemiringWithoutOne"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"] = {};
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["*-isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["*-isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x0)));
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["identity"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["+-isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x0)));
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["distrib"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["distrib"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["zero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x0));
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SelectiveMagma"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∙_": x2,
            "_≈_": x1,
            "isSelectiveMagma": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1274 5645577459263225835"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["nearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["NearSemiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["_+_"](x2))(exports["SemiringWithoutOne"]["_*_"](x2))(exports["SemiringWithoutOne"]["0#"](x2))(z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"] = {};
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["*-semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["+-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["_NameId 1344 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutOne"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["_+_"](x2))(exports["SemiringWithoutOne"]["0#"](x2))(z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](exports["SemiringWithoutOne"]["isSemiringWithoutOne"](x2)));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"] = {};
exports["CommutativeSemiringWithoutOne"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x3;
      }
    });
  };
exports["CommutativeSemiringWithoutOne"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["CommutativeSemiringWithoutOne"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"] = {};
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["*-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["*-comm"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsNearSemiring"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["*-isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0)));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["*-isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["*-isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["assoc"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0))));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["∙-cong"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["identity"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["+-isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0)));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0))));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["distrib"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0)));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["distrib"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["isSemiringWithoutOne"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsNearSemiring"]["+-isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["zero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x0)));
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1398 5645577459263225835"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["_+_"](x2))(exports["CommutativeSemiringWithoutOne"]["_*_"](x2))(exports["CommutativeSemiringWithoutOne"]["0#"](x2))(z_jAgda_Algebra_Structures["IsCommutativeSemiringWithoutOne"]["isSemiringWithoutOne"](exports["CommutativeSemiringWithoutOne"]["isCommutativeSemiringWithoutOne"](x2)));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"] = {};
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["*-semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["NearSemiring"]["*-semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["+-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["NearSemiring"]["+-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["_NameId 1472 5645577459263225835"]["nearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiringWithoutOne"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["RawSemiring"] = {};
exports["RawSemiring"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x3;
      }
    });
  };
exports["RawSemiring"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["RawSemiring"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["RawSemiring"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["SemiringWithoutAnnihilatingZero"] = {};
exports["SemiringWithoutAnnihilatingZero"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x3;
      }
    });
  };
exports["SemiringWithoutAnnihilatingZero"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x4;
      }
    });
  };
exports["SemiringWithoutAnnihilatingZero"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x5;
      }
    });
  };
exports["SemiringWithoutAnnihilatingZero"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x6;
      }
    });
  };
exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x7;
      }
    });
  };
exports["RawMonoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∙_": x2,
            "_≈_": x1,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            },
            "ε": x3
          };
        };
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"] = {};
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["*-isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0))))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2))))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2))))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["+-isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0))))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)))))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)))))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)))))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2))))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)))))));
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1566 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x0)))))));
  };
exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["_+_"](x2))(exports["SemiringWithoutAnnihilatingZero"]["0#"](x2))(z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1636 5645577459263225835"] = {};
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1636 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1636 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1636 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1636 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1636 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["_*_"](x2))(exports["SemiringWithoutAnnihilatingZero"]["1#"](x2))(z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](exports["SemiringWithoutAnnihilatingZero"]["isSemiringWithoutAnnihilatingZero"](x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1650 5645577459263225835"] = {};
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1650 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1650 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1650 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["_NameId 1650 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Semiring"] = {};
exports["Semiring"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x3;
      }
    });
  };
exports["Semiring"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x4;
      }
    });
  };
exports["Semiring"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x5;
      }
    });
  };
exports["Semiring"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x6;
      }
    });
  };
exports["Semiring"]["isSemiring"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x7;
      }
    });
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"] = {};
exports["Semiring"]["_NameId 1698 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)))));
  };
exports["Monoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∙_": x2,
              "_≈_": x1,
              "isMonoid": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              },
              "ε": x3
            };
          };
        };
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2)))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2)))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["*-isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2)))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2)))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["+-isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0)))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["isSemiring"](x2)));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["isSemiring"](x2));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2))))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2)))))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x0))))))));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["zero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiring"]["zero"](exports["Semiring"]["isSemiring"](x0));
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["isSemiring"](x2))));
      };
    };
  };
exports["Semiring"]["_NameId 1698 5645577459263225835"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["isSemiring"](x2))));
      };
    };
  };
exports["Semiring"]["rawSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawSemiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["_+_"](x2))(exports["Semiring"]["_*_"](x2))(exports["Semiring"]["0#"](x2))(exports["Semiring"]["1#"](x2));
      };
    };
  };
exports["Semiring"]["semiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["_+_"](x2))(exports["Semiring"]["_*_"](x2))(exports["Semiring"]["0#"](x2))(exports["Semiring"]["1#"](x2))(z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](exports["Semiring"]["isSemiring"](x2)));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"] = {};
exports["Semiring"]["_NameId 1782 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Semiring"]["_NameId 1782 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Semiring"]["semiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["_+_"](x2))(exports["Semiring"]["_*_"](x2))(exports["Semiring"]["0#"](x2))(z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["isSemiring"](x2)));
      };
    };
  };
exports["Semiring"]["_NameId 1808 5645577459263225835"] = {};
exports["Semiring"]["_NameId 1808 5645577459263225835"]["nearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemiring"] = {};
exports["CommutativeSemiring"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x3;
      }
    });
  };
exports["CommutativeSemiring"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x4;
      }
    });
  };
exports["CommutativeSemiring"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x5;
      }
    });
  };
exports["CommutativeSemiring"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x6;
      }
    });
  };
exports["CommutativeSemiring"]["isCommutativeSemiring"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x7;
      }
    });
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"] = {};
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["*-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["*-comm"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["*-isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["*-isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["isCommutativeSemiring"](x2));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["*-isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["comm"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2))))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2))))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["+-isCommutativeMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isCommutativeSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isCommutativeSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["isCommutativeSemiring"](x2));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0))))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isSemiring"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2))))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isMonoid"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["+-isCommutativeMonoid"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)))))))));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["zero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemiring"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x0)));
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1850 5645577459263225835"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["zero"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["semiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["_+_"](x2))(exports["CommutativeSemiring"]["_*_"](x2))(exports["CommutativeSemiring"]["0#"](x2))(exports["CommutativeSemiring"]["1#"](x2))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isSemiring"](exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"] = {};
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["nearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["rawSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["rawSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["semiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemiring"]["_NameId 1940 5645577459263225835"]["semiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeSemiring"]["*-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["_*_"](x2))(exports["CommutativeSemiring"]["1#"](x2))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["*-isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)));
      };
    };
  };
exports["CommutativeSemiring"]["commutativeSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeSemiringWithoutOne"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["_+_"](x2))(exports["CommutativeSemiring"]["_*_"](x2))(exports["CommutativeSemiring"]["0#"](x2))(z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isCommutativeSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["isCommutativeSemiring"](x2)));
      };
    };
  };
exports["RawRing"] = {};
exports["RawRing"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x3;
      }
    });
  };
exports["RawRing"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x4;
      }
    });
  };
exports["RawRing"]["-_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x5;
      }
    });
  };
exports["RawRing"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x6;
      }
    });
  };
exports["RawRing"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7) {
        return x7;
      }
    });
  };
exports["CommutativeMonoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∙_": x2,
              "_≈_": x1,
              "isCommutativeMonoid": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              },
              "ε": x3
            };
          };
        };
      };
    };
  };
exports["Ring"] = {};
exports["Ring"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x3;
      }
    });
  };
exports["Ring"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x4;
      }
    });
  };
exports["Ring"]["-_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x5;
      }
    });
  };
exports["Ring"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x6;
      }
    });
  };
exports["Ring"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x7;
      }
    });
  };
exports["Ring"]["isRing"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x8;
      }
    });
  };
exports["Ring"]["_NameId 2056 5645577459263225835"] = {};
exports["Ring"]["_NameId 2056 5645577459263225835"]["_-_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["Ring"]["_+_"](x2)(x3)(exports["Ring"]["-_"](x2)(x4));
          };
        };
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x0))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x0)))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x0)));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x2))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x2))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x0))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["*-isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x0));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](exports["Ring"]["isRing"](x0)));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsAbelianGroup"]["comm"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0)));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0)))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0)))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["+-isAbelianGroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isGroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0)));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0)))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["⁻¹-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["⁻¹-cong"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["inverse"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["distrib"](exports["Ring"]["isRing"](x0));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0)))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsRing"]["isSemiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2)));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)))))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x0))))))));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["_+_"](x2))(exports["Ring"]["0#"](x2))(exports["Ring"]["-_"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["_+_"](x2))(exports["Ring"]["0#"](x2))(exports["Ring"]["-_"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2))));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["zero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["zero"](exports["Ring"]["isRing"](x0));
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsRing"]["zero"](exports["Ring"]["isRing"](x2)));
      };
    };
  };
exports["Ring"]["_NameId 2056 5645577459263225835"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsRing"]["zero"](exports["Ring"]["isRing"](x2)));
      };
    };
  };
exports["Ring"]["+-abelianGroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["AbelianGroup"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["_+_"](x2))(exports["Ring"]["0#"](x2))(exports["Ring"]["-_"](x2))(z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](exports["Ring"]["isRing"](x2)));
      };
    };
  };
exports["Ring"]["semiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["_+_"](x2))(exports["Ring"]["_*_"](x2))(exports["Ring"]["0#"](x2))(exports["Ring"]["1#"](x2))(z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["isRing"](x2)));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"] = {};
exports["Ring"]["_NameId 2160 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["nearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["semiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Ring"]["_NameId 2160 5645577459263225835"]["semiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Ring"]["_NameId 2190 5645577459263225835"] = {};
exports["Ring"]["_NameId 2190 5645577459263225835"]["group"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["+-abelianGroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["Ring"]["rawRing"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["RawRing"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["_+_"](x2))(exports["Ring"]["_*_"](x2))(exports["Ring"]["-_"](x2))(exports["Ring"]["0#"](x2))(exports["Ring"]["1#"](x2));
      };
    };
  };
exports["CommutativeRing"] = {};
exports["CommutativeRing"]["_+_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x3;
      }
    });
  };
exports["CommutativeRing"]["_*_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x4;
      }
    });
  };
exports["CommutativeRing"]["-_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x5;
      }
    });
  };
exports["CommutativeRing"]["0#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x6;
      }
    });
  };
exports["CommutativeRing"]["1#"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x7;
      }
    });
  };
exports["CommutativeRing"]["isCommutativeRing"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x8;
      }
    });
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"] = {};
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["_-_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["CommutativeRing"]["_+_"](x2)(x3)(exports["CommutativeRing"]["-_"](x2)(x4));
          };
        };
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["*-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeRing"]["*-comm"](exports["CommutativeRing"]["isCommutativeRing"](x0));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["*-isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeRing"]["*-isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["isCommutativeRing"](x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["*-isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsRing"]["*-isMonoid"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["assoc"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsAbelianGroup"]["comm"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["∙-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["∙-cong"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["∙-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["∙-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["∙-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["identity"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["identityʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["identityˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsMonoid"]["identity"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["+-isAbelianGroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isCommutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isCommutativeSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeMonoid"]["isCommutativeSemigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isCommutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isGroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isMonoid"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["⁻¹-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["⁻¹-cong"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["inverse"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["inverseʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["inverseˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsGroup"]["inverse"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["distrib"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["distrib"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsSemiringWithoutAnnihilatingZero"]["distrib"](z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutAnnihilatingZero"](z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isCommutativeSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeRing"]["isCommutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["isCommutativeRing"](x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isCommutativeSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsCommutativeSemiring"]["isCommutativeSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isCommutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["isCommutativeRing"](x2)));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0))))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isNearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiringWithoutOne"]["isNearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isRing"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isSemiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsRing"]["isSemiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["isSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemiring"]["isSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsRing"]["isSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsMagma"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsMagma"]["isEquivalence"](z_jAgda_Algebra_Structures["IsSemigroup"]["isMagma"](z_jAgda_Algebra_Structures["IsMonoid"]["isSemigroup"](z_jAgda_Algebra_Structures["IsGroup"]["isMonoid"](z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)))))))));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["uniqueʳ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueʳ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["_+_"](x2))(exports["CommutativeRing"]["0#"](x2))(exports["CommutativeRing"]["-_"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["uniqueˡ-⁻¹"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsGroup"]["uniqueˡ-⁻¹"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["_+_"](x2))(exports["CommutativeRing"]["0#"](x2))(exports["CommutativeRing"]["-_"](x2))(z_jAgda_Algebra_Structures["IsAbelianGroup"]["isGroup"](z_jAgda_Algebra_Structures["IsRing"]["+-isAbelianGroup"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["zero"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsRing"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x0)));
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["zeroʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsRing"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2238 5645577459263225835"]["zeroˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsRing"]["zero"](z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2))));
      };
    };
  };
exports["CommutativeRing"]["ring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Ring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["_+_"](x2))(exports["CommutativeRing"]["_*_"](x2))(exports["CommutativeRing"]["-_"](x2))(exports["CommutativeRing"]["0#"](x2))(exports["CommutativeRing"]["1#"](x2))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isRing"](exports["CommutativeRing"]["isCommutativeRing"](x2)));
      };
    };
  };
exports["CommutativeRing"]["commutativeSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeSemiring"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["_+_"](x2))(exports["CommutativeRing"]["_*_"](x2))(exports["CommutativeRing"]["0#"](x2))(exports["CommutativeRing"]["1#"](x2))(z_jAgda_Algebra_Structures["IsCommutativeRing"]["isCommutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["isCommutativeRing"](x2)));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2352 5645577459263225835"] = {};
exports["CommutativeRing"]["_NameId 2352 5645577459263225835"]["+-abelianGroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Ring"]["+-abelianGroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["ring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2352 5645577459263225835"]["group"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["AbelianGroup"]["group"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Ring"]["+-abelianGroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["ring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2352 5645577459263225835"]["rawRing"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Ring"]["rawRing"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["ring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"] = {};
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["*-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeSemiring"]["*-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["IdempotentCommutativeMonoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∙_": x2,
              "_≈_": x1,
              "isIdempotentCommutativeMonoid": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              },
              "ε": x3
            };
          };
        };
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["*-monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["*-monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["+-commutativeMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["magma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["monoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["rawMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Magma"]["rawMagma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semigroup"]["magma"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["rawMonoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["rawMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["semigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Monoid"]["semigroup"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeMonoid"]["monoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["SemiringWithoutAnnihilatingZero"]["+-commutativeMonoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["commutativeSemiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeSemiring"]["commutativeSemiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["nearSemiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["SemiringWithoutOne"]["nearSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["semiring"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["semiringWithoutAnnihilatingZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["semiringWithoutAnnihilatingZero"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["CommutativeRing"]["_NameId 2360 5645577459263225835"]["semiringWithoutOne"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Semiring"]["semiringWithoutOne"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeSemiring"]["semiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["CommutativeRing"]["commutativeSemiring"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["BooleanAlgebra"] = {};
exports["BooleanAlgebra"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x3;
      }
    });
  };
exports["BooleanAlgebra"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x4;
      }
    });
  };
exports["BooleanAlgebra"]["¬_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x5;
      }
    });
  };
exports["BooleanAlgebra"]["⊤"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x6;
      }
    });
  };
exports["BooleanAlgebra"]["⊥"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x7;
      }
    });
  };
exports["BooleanAlgebra"]["isBooleanAlgebra"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x8;
      }
    });
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"] = {};
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["absorptive"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["isDistributiveLattice"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["isEquivalence"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["isLattice"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0)));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2)))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0)))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2)))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0)))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0)))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["¬-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["¬-cong"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-absorbs-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2)))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-complementʳ"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["∧-complementʳ"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∧-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-absorbs-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2)))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-assoc"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-assoc"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-comm"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-complementʳ"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["∨-complementʳ"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-cong"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0))));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-congʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∨-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-congˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2))));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-distribʳ-∧"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-distribʳ-∧"](z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0)));
  };
exports["BooleanAlgebra"]["_NameId 2438 5645577459263225835"]["∨-∧-distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-∧-distribʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2)));
      };
    };
  };
exports["BooleanAlgebra"]["distributiveLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["DistributiveLattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["_∨_"](x2))(exports["BooleanAlgebra"]["_∧_"](x2))(z_jAgda_Algebra_Structures["IsBooleanAlgebra"]["isDistributiveLattice"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x2)));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2494 5645577459263225835"] = {};
exports["BooleanAlgebra"]["_NameId 2494 5645577459263225835"]["lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["distributiveLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 2494 5645577459263225835"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["distributiveLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["RawGroup"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_⁻¹": x4,
              "_∙_": x2,
              "_≈_": x1,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              },
              "ε": x3
            };
          };
        };
      };
    };
  };
exports["Group"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "Carrier": x0,
                "_⁻¹": x4,
                "_∙_": x2,
                "_≈_": x1,
                "isGroup": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                },
                "ε": x3
              };
            };
          };
        };
      };
    };
  };
exports["AbelianGroup"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "Carrier": x0,
                "_⁻¹": x4,
                "_∙_": x2,
                "_≈_": x1,
                "isAbelianGroup": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                },
                "ε": x3
              };
            };
          };
        };
      };
    };
  };
exports["Lattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∧_": x3,
              "_∨_": x2,
              "_≈_": x1,
              "isLattice": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              }
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∧_": x3,
              "_∨_": x2,
              "_≈_": x1,
              "isDistributiveLattice": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              }
            };
          };
        };
      };
    };
  };
exports["NearSemiring"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "0#": x4,
                "Carrier": x0,
                "_*_": x3,
                "_+_": x2,
                "_≈_": x1,
                "isNearSemiring": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                }
              };
            };
          };
        };
      };
    };
  };
exports["SemiringWithoutOne"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "0#": x4,
                "Carrier": x0,
                "_*_": x3,
                "_+_": x2,
                "_≈_": x1,
                "isSemiringWithoutOne": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                }
              };
            };
          };
        };
      };
    };
  };
exports["CommutativeSemiringWithoutOne"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "0#": x4,
                "Carrier": x0,
                "_*_": x3,
                "_+_": x2,
                "_≈_": x1,
                "isCommutativeSemiringWithoutOne": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                }
              };
            };
          };
        };
      };
    };
  };
exports["RawSemiring"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "0#": x4,
                "1#": x5,
                "Carrier": x0,
                "_*_": x3,
                "_+_": x2,
                "_≈_": x1,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                }
              };
            };
          };
        };
      };
    };
  };
exports["SemiringWithoutAnnihilatingZero"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return {
                  "0#": x4,
                  "1#": x5,
                  "Carrier": x0,
                  "_*_": x3,
                  "_+_": x2,
                  "_≈_": x1,
                  "isSemiringWithoutAnnihilatingZero": x6,
                  "record": function (x7) {
                    return x7["record"](x0, x1, x2, x3, x4, x5, x6);
                  }
                };
              };
            };
          };
        };
      };
    };
  };
exports["Semiring"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return {
                  "0#": x4,
                  "1#": x5,
                  "Carrier": x0,
                  "_*_": x3,
                  "_+_": x2,
                  "_≈_": x1,
                  "isSemiring": x6,
                  "record": function (x7) {
                    return x7["record"](x0, x1, x2, x3, x4, x5, x6);
                  }
                };
              };
            };
          };
        };
      };
    };
  };
exports["CommutativeSemiring"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return {
                  "0#": x4,
                  "1#": x5,
                  "Carrier": x0,
                  "_*_": x3,
                  "_+_": x2,
                  "_≈_": x1,
                  "isCommutativeSemiring": x6,
                  "record": function (x7) {
                    return x7["record"](x0, x1, x2, x3, x4, x5, x6);
                  }
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawRing"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return {
                  "-_": x4,
                  "0#": x5,
                  "1#": x6,
                  "Carrier": x0,
                  "_*_": x3,
                  "_+_": x2,
                  "_≈_": x1,
                  "record": function (x7) {
                    return x7["record"](x0, x1, x2, x3, x4, x5, x6);
                  }
                };
              };
            };
          };
        };
      };
    };
  };
exports["Ring"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return {
                    "-_": x4,
                    "0#": x5,
                    "1#": x6,
                    "Carrier": x0,
                    "_*_": x3,
                    "_+_": x2,
                    "_≈_": x1,
                    "isRing": x7,
                    "record": function (x8) {
                      return x8["record"](x0, x1, x2, x3, x4, x5, x6, x7);
                    }
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["CommutativeRing"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return {
                    "-_": x4,
                    "0#": x5,
                    "1#": x6,
                    "Carrier": x0,
                    "_*_": x3,
                    "_+_": x2,
                    "_≈_": x1,
                    "isCommutativeRing": x7,
                    "record": function (x8) {
                      return x8["record"](x0, x1, x2, x3, x4, x5, x6, x7);
                    }
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return {
                    "Carrier": x0,
                    "_∧_": x3,
                    "_∨_": x2,
                    "_≈_": x1,
                    "isBooleanAlgebra": x7,
                    "record": function (x8) {
                      return x8["record"](x0, x1, x2, x3, x4, x5, x6, x7);
                    },
                    "¬_": x4,
                    "⊤": x5,
                    "⊥": x6
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawMagma"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["RawMagma"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Magma"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Magma"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Semigroup"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Semigroup"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Band"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Band"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeSemigroup"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeSemigroup"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Semilattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Semilattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["SelectiveMagma"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["SelectiveMagma"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["RawMonoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["RawMonoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Monoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Monoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeMonoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeMonoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IdempotentCommutativeMonoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IdempotentCommutativeMonoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedLattice"] = agdaRTS.primIntegerFromString("0");
exports["BoundedLattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedLattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["RawGroup"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["RawGroup"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Group"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Group"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["AbelianGroup"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["AbelianGroup"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Lattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Lattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DistributiveLattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["DistributiveLattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["NearSemiring"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["NearSemiring"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["SemiringWithoutOne"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["SemiringWithoutOne"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeSemiringWithoutOne"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeSemiringWithoutOne"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["RawSemiring"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["RawSemiring"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["SemiringWithoutAnnihilatingZero"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["SemiringWithoutAnnihilatingZero"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Semiring"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Semiring"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeSemiring"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeSemiring"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["RawRing"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["RawRing"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Ring"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Ring"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeRing"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["CommutativeRing"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BooleanAlgebra"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["BooleanAlgebra"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["RawSemigroup"] = agdaRTS.primIntegerFromString("0");

