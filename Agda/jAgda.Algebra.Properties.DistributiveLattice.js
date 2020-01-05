var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Algebra_Properties_Lattice = require("jAgda.Algebra.Properties.Lattice");
var z_jAgda_Algebra_Properties_Semilattice = require("jAgda.Algebra.Properties.Semilattice");
var z_jAgda_Algebra_Structures = require("jAgda.Algebra.Structures");
var z_jAgda_Function_Equality = require("jAgda.Function.Equality");
var z_jAgda_Function_Equivalence = require("jAgda.Function.Equivalence");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Reasoning_Base_Partial = require("jAgda.Relation.Binary.Reasoning.Base.Partial");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["_NameId 162 8447208868938117190"] = {};
exports["_NameId 162 8447208868938117190"]["isOrderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["isOrderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["orderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["orderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-idem"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-idempotent"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-idempotent"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isBand"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-isBand"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-isMagma"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isOrderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isOrderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-isSemigroup"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-isSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-orderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-orderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-semilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-∨-isLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-∨-isLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-∨-lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∧-∨-lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-idem"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-idem"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-idempotent"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-idempotent"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-isBand"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-isBand"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-isMagma"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-isMagma"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isOrderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-isOrderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-isOrderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-isSemigroup"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-isSemigroup"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-isSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-isSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-orderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∧-orderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Semilattice["∧-orderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Properties_Lattice["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-semilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-semilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-∧-isOrderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-∧-isOrderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["_NameId 162 8447208868938117190"]["∨-∧-orderTheoreticLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Properties_Lattice["∨-∧-orderTheoreticLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∨-distribˡ-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x5))(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x5)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x5))(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x5)(x3)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-distribʳ-∧"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))(x3)(x4)(x5))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x5)(x3)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-cong"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x5)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x5))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x4)(x3))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x5)(x3)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x5))))))));
            };
          };
        };
      };
    };
  };
exports["∨-distrib-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["∨-distribˡ-∧"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-distribʳ-∧"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)));
      };
    };
  };
exports["∧-distribˡ-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5))(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4)))(x3)(z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(x3)(x4))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Structures["IsLattice"]["∨-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(x4))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-assoc"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-congˡ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(exports["∨-distribˡ-∧"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x4)(x3)(x5))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-congʳ"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(x3)(z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Algebra_Structures["IsLattice"]["absorptive"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(x3)(x5))))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-distribʳ-∧"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))(x3)(x4)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))))))))));
            };
          };
        };
      };
    };
  };
exports["∧-distribʳ-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Reasoning_Base_Partial["begin_"](z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5))(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x5)(x3)))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5))(x3))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x4)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x5)(x3)))(exports["∧-distribˡ-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(x3)(x4)(x5))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_∼⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](z_jAgda_Relation_Binary_Bundles["PartialSetoid"]["isPartialEquivalence"](z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x5)(x3)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x5)(x3)))(z_jAgda_Algebra_Structures["IsLattice"]["∨-cong"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x4))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x3)(x5))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x5)(x3))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(x4))(z_jAgda_Algebra_Structures["IsLattice"]["∧-comm"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2)))(x3)(x5)))(z_jAgda_Relation_Binary_Reasoning_Base_Partial["_IsRelatedTo_"]["relTo"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Algebra_Structures["IsLattice"]["isEquivalence"](z_jAgda_Algebra_Structures["IsDistributiveLattice"]["isLattice"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x4)(x3))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x5)(x3))))))));
            };
          };
        };
      };
    };
  };
exports["∧-distrib-∨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["∧-distribˡ-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))(exports["∧-distribʳ-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∧-∨-isDistributiveLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Structures["IsDistributiveLattice"]["record"](z_jAgda_Algebra_Properties_Lattice["∧-∨-isLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))(exports["∧-distribʳ-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∧-∨-distributiveLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Algebra_Bundles["DistributiveLattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2))(exports["∧-∨-isDistributiveLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["replace-equality"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Algebra_Bundles["DistributiveLattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["record"](z_jAgda_Algebra_Bundles["Lattice"]["isLattice"](z_jAgda_Algebra_Properties_Lattice["replace-equality"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2))(agdaRTS.primIntegerFromString("0"))(x4)))(function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](z_jAgda_Function_Equivalence["Equivalence"]["to"](x4(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(x6)(x7))(x5))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∧_"](x2)(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x6)(x5))(z_jAgda_Algebra_Bundles["DistributiveLattice"]["_∨_"](x2)(x7)(x5)))))(z_jAgda_Algebra_Structures["IsDistributiveLattice"]["∨-distribʳ-∧"](z_jAgda_Algebra_Bundles["DistributiveLattice"]["isDistributiveLattice"](x2))(x5)(x6)(x7));
                };
              };
            }));
          };
        };
      };
    };
  };
exports["∨-∧-distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∨-distribˡ-∧"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["∨-∧-distrib"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∨-distrib-∧"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["∧-∨-distribˡ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-distribˡ-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["∧-∨-distribʳ"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-distribʳ-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["∧-∨-distrib"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-distrib-∨"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["_NameId 72 8447208868938117190"] = {};
exports["_NameId 72 8447208868938117190"]["_DistributesOver_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 72 8447208868938117190"]["_DistributesOverʳ_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 72 8447208868938117190"]["_DistributesOverˡ_"] = agdaRTS.primIntegerFromString("0");

