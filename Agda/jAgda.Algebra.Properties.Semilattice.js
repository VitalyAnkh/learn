var agdaRTS = require("agda-rts");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Construct_NaturalOrder_Left = require("jAgda.Relation.Binary.Construct.NaturalOrder.Left");
var z_jAgda_Relation_Binary_Lattice = require("jAgda.Relation.Binary.Lattice");
var z_jAgda_Relation_Binary_Properties_Poset = require("jAgda.Relation.Binary.Properties.Poset");

exports["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Construct_NaturalOrder_Left["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semilattice"]["_∧_"](x2))(z_jAgda_Algebra_Bundles["Semilattice"]["isSemilattice"](x2));
      };
    };
  };
exports["∧-isOrderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Lattice["IsMeetSemilattice"]["record"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](exports["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))(z_jAgda_Relation_Binary_Construct_NaturalOrder_Left["_NameId 1744 10634464802063786067"]["infimum"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semilattice"]["_∧_"](x2))(z_jAgda_Algebra_Bundles["Semilattice"]["isSemilattice"](x2)));
      };
    };
  };
exports["∧-isOrderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Lattice["IsJoinSemilattice"]["record"](z_jAgda_Relation_Binary_Properties_Poset["≥-isPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)))(z_jAgda_Relation_Binary_Construct_NaturalOrder_Left["_NameId 1744 10634464802063786067"]["infimum"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semilattice"]["_∧_"](x2))(z_jAgda_Algebra_Bundles["Semilattice"]["isSemilattice"](x2)));
      };
    };
  };
exports["∧-orderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Lattice["MeetSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semilattice"]["_∧_"](x2))(exports["∧-isOrderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["∧-orderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Lattice["JoinSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Algebra_Bundles["Semilattice"]["_∧_"](x2))(exports["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["isOrderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-isOrderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["isOrderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-isOrderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["orderTheoreticMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-orderTheoreticMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["orderTheoreticJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["∧-orderTheoreticJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2);
      };
    };
  };
exports["_NameId 140 2281161758053337447"] = {};
exports["_NameId 140 2281161758053337447"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 146 2281161758053337447"] = {};
exports["_NameId 146 2281161758053337447"]["_≥_"] = agdaRTS.primIntegerFromString("0");

