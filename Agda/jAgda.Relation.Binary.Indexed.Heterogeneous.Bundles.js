var agdaRTS = require("agda-rts");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Structures");

exports["IndexedSetoid"] = {};
exports["IndexedSetoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "Carrier": x0,
          "_≈_": x1,
          "isEquivalence": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IndexedSetoid"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IndexedSetoid"]["_NameId 40 552575877123163278"] = {};
exports["IndexedSetoid"]["_NameId 40 552575877123163278"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["refl"](exports["IndexedSetoid"]["isEquivalence"](x0));
  };
exports["IndexedSetoid"]["_NameId 40 552575877123163278"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IndexedSetoid"]["isEquivalence"](x4));
          };
        };
      };
    };
  };
exports["IndexedSetoid"]["_NameId 40 552575877123163278"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["sym"](exports["IndexedSetoid"]["isEquivalence"](x0));
  };
exports["IndexedSetoid"]["_NameId 40 552575877123163278"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["trans"](exports["IndexedSetoid"]["isEquivalence"](x0));
  };
exports["IndexedPreorder"] = {};
exports["IndexedPreorder"]["isPreorder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"] = {};
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["isEquivalence"](exports["IndexedPreorder"]["isPreorder"](x0));
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IndexedPreorder"]["isPreorder"](x5));
            };
          };
        };
      };
    };
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["reflexive"](exports["IndexedPreorder"]["isPreorder"](x0));
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["trans"](exports["IndexedPreorder"]["isPreorder"](x0));
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["Eq"] = {};
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["refl"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["isEquivalence"](exports["IndexedPreorder"]["isPreorder"](x0)));
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["isEquivalence"](exports["IndexedPreorder"]["isPreorder"](x5)));
            };
          };
        };
      };
    };
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["sym"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["isEquivalence"](exports["IndexedPreorder"]["isPreorder"](x0)));
  };
exports["IndexedPreorder"]["_NameId 88 552575877123163278"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["trans"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedPreorder"]["isEquivalence"](exports["IndexedPreorder"]["isPreorder"](x0)));
  };
exports["IndexedPreorder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_∼_": x2,
            "_≈_": x1,
            "isPreorder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["IndexedSetoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IndexedSetoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IndexedPreorder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IndexedPreorder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IndexedPreorder"]["_∼_"] = agdaRTS.primIntegerFromString("0");

