var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Algebra_Properties_Semilattice = require("jAgda.Algebra.Properties.Semilattice");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Data_Product = require("jAgda.Data.Product");
var z_jAgda_Function_Equality = require("jAgda.Function.Equality");
var z_jAgda_Function_Equivalence = require("jAgda.Function.Equivalence");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Construct_NaturalOrder_Left = require("jAgda.Relation.Binary.Construct.NaturalOrder.Left");
var z_jAgda_Relation_Binary_Lattice = require("jAgda.Relation.Binary.Lattice");
var z_jAgda_Relation_Binary_Reasoning_Base_Partial = require("jAgda.Relation.Binary.Reasoning.Base.Partial");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["∧-idem"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3))))(x3)(z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x3)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3)))(x3)(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)(x3))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3))))(x3)(x3)(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)))));
        };
      };
    };
  };
exports["∧-isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x0)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x0)));
  };
exports["∧-isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["∧-isMagma"](x0))(z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x0)));
  };
exports["∧-isBand"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsBand"]["record"](exports["∧-isSemigroup"](x2))(exports["∧-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∧-isSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemilattice"]["record"](exports["∧-isBand"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["∧-semilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Bundles["Semilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2))(exports["∧-isSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1432 4546801937796113883"] = {};
exports["_NameId 1432 4546801937796113883"]["∧-isOrderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1432 4546801937796113883"]["∧-isOrderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1432 4546801937796113883"]["∧-orderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1432 4546801937796113883"]["∧-orderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∨-idem"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x3))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3)))(x3)(z_jAgda_Algebra_Structures["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x3)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3))(x3)(exports["∧-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x3))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x3)))(x3)(x3)(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)(x3))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)))));
        };
      };
    };
  };
exports["∨-isMagma"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsMagma"]["record"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x0)))(z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x0)));
  };
exports["∨-isSemigroup"] = function (x0) {
    return z_jAgda_Algebra_Structures["IsSemigroup"]["record"](exports["∨-isMagma"](x0))(z_jAgda_Algebra_Structures["IsLattice"]["∨-assoc"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x0)));
  };
exports["∨-isBand"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsBand"]["record"](exports["∨-isSemigroup"](x2))(exports["∨-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∨-isSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsSemilattice"]["record"](exports["∨-isBand"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)));
      };
    };
  };
exports["∨-semilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Bundles["Semilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2))(exports["∨-isSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1456 4546801937796113883"] = {};
exports["_NameId 1456 4546801937796113883"]["∧-isOrderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1456 4546801937796113883"]["∧-isOrderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1456 4546801937796113883"]["∧-orderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1456 4546801937796113883"]["∧-orderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∧-∨-isLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsLattice"]["record"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Structures["IsLattice"]["∨-assoc"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Data_Product["swap"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))));
      };
    };
  };
exports["∧-∨-lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Bundles["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2))(exports["∧-∨-isLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 1470 4546801937796113883"] = {};
exports["_NameId 1470 4546801937796113883"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∨-∧-isOrderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Lattice["IsLattice"]["record"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](z_jAgda_Algebra_Properties_Semilattice["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))(exports["_NameId 1484 4546801937796113883"]["supremum"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))(z_jAgda_Relation_Binary_Construct_NaturalOrder_Left["_NameId 1744 10634464802063786067"]["infimum"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2))(exports["∧-isSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 1484 4546801937796113883"] = {};
exports["_NameId 1484 4546801937796113883"]["sound"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x4))(x3)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(x3)))(x3)(z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x3)(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(x3))(x5))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(x3)))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x4)))(x3)(z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x4)(x3)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x4)))(x3)(x3)(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)(x4))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x3)))))));
            };
          };
        };
      };
    };
  };
exports["_NameId 1484 4546801937796113883"]["complete"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(x3))(x4)(z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x4)))(x4)(z_jAgda_Algebra_Structures["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x4)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x4))(x5))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x4)))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x4)(x3)))(x4)(z_jAgda_Algebra_Structures["IsLattice"]["∨-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x3)(x4)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x4)(x3)))(x4)(x4)(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x4)(x3))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x4)))))));
            };
          };
        };
      };
    };
  };
exports["_NameId 1484 4546801937796113883"]["supremum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["_NameId 1484 4546801937796113883"]["sound"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x3)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Relation_Binary_Lattice["IsJoinSemilattice"]["supremum"](z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))(x3)(x4))))(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["_NameId 1484 4546801937796113883"]["sound"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x4)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Relation_Binary_Lattice["IsJoinSemilattice"]["supremum"](z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))(x3)(x4)))))(function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["_NameId 1484 4546801937796113883"]["sound"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x3)(x4))(x5)(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Relation_Binary_Lattice["IsJoinSemilattice"]["supremum"](z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))(x3)(x4)))(x5)(exports["_NameId 1484 4546801937796113883"]["complete"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x3)(x5)(x6))(exports["_NameId 1484 4546801937796113883"]["complete"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x4)(x5)(x7)));
                };
              };
            }));
          };
        };
      };
    };
  };
exports["∨-∧-orderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Lattice["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2))(exports["∨-∧-isOrderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["replace-equality"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Algebra_Bundles["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2))(z_jAgda_Algebra_Structures["IsLattice"]["record"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x5) {
              return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(x5)(x5)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x5));
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(x6)(x5)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x5)(x6)(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x5)(x6)))(x7)));
                };
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(x5)(x7)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x5)(x6)(x7)(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x5)(x6)))(x8))(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x6)(x7)))(x9)));
                    };
                  };
                };
              };
            }))(function (x5) {
              return function (x6) {
                return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x5)(x6))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x6)(x5))))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x5)(x6));
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x5)(x6))(x7))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x5)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x6)(x7)))))(z_jAgda_Algebra_Structures["IsLattice"]["∨-assoc"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x5)(x6)(x7));
                };
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x5)(x7))(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x6)(x8))))(z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x5)(x6)(x7)(x8)(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x5)(x6)))(x9))(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x7)(x8)))(x10)));
                      };
                    };
                  };
                };
              };
            })(function (x5) {
              return function (x6) {
                return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x5)(x6))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x6)(x5))))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x5)(x6));
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x5)(x6))(x7))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x5)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x6)(x7)))))(z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x5)(x6)(x7));
                };
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x5)(x7))(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x6)(x8))))(z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2))(x5)(x6)(x7)(x8)(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x5)(x6)))(x9))(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["from"](x4(x7)(x8)))(x10)));
                      };
                    };
                  };
                };
              };
            })(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x5) {
              return function (x6) {
                return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x5)(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x5)(x6)))(x5)))(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x5)(x6));
              };
            })(function (x5) {
              return function (x6) {
                return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["Lattice"]["_∧_"](x2)(x5)(z_jAgda_Algebra_Bundles["Lattice"]["_∨_"](x2)(x5)(x6)))(x5)))(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](x2)))(x5)(x6));
              };
            })));
          };
        };
      };
    };
  };
exports["∧-idempotent"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["∨-idempotent"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∨-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["isOrderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∨-∧-isOrderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["orderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∨-∧-orderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["_NameId 1328 4546801937796113883"] = {};
exports["_NameId 1328 4546801937796113883"]["Idempotent"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1474 4546801937796113883"] = {};
exports["_NameId 1474 4546801937796113883"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 1484 4546801937796113883"]["_NameId 1490 4546801937796113883"] = {};
exports["_NameId 1484 4546801937796113883"]["_NameId 1490 4546801937796113883"]["_≤_"] = agdaRTS.primIntegerFromString("0");

