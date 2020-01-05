var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Relation_Binary_Consequences = require("jAgda.Relation.Binary.Consequences");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["PartialSetoid"] = {};
exports["PartialSetoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "Carrier": x0,
          "_≈_": x1,
          "isPartialEquivalence": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["PartialSetoid"]["isPartialEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["PartialSetoid"]["_NameId 28 16183279020424455842"] = {};
exports["PartialSetoid"]["_NameId 28 16183279020424455842"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["sym"](exports["PartialSetoid"]["isPartialEquivalence"](x0));
  };
exports["PartialSetoid"]["_NameId 28 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialEquivalence"]["trans"](exports["PartialSetoid"]["isPartialEquivalence"](x0));
  };
exports["Setoid"] = {};
exports["Setoid"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["Setoid"]["_NameId 62 16183279020424455842"] = {};
exports["Setoid"]["_NameId 62 16183279020424455842"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Setoid"]["isEquivalence"](x2));
      };
    };
  };
exports["Setoid"]["_NameId 62 16183279020424455842"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["Setoid"]["isEquivalence"](x0));
  };
exports["Setoid"]["_NameId 62 16183279020424455842"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Setoid"]["isEquivalence"](x2));
      };
    };
  };
exports["Setoid"]["_NameId 62 16183279020424455842"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["Setoid"]["isEquivalence"](x0));
  };
exports["Setoid"]["_NameId 62 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["Setoid"]["isEquivalence"](x0));
  };
exports["Setoid"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["PartialSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Setoid"]["isEquivalence"](x2)));
      };
    };
  };
exports["DecSetoid"] = {};
exports["DecSetoid"]["isDecEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"] = {};
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["_≟_"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["_≟_"](exports["DecSetoid"]["isDecEquivalence"](x0));
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x0));
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x2)));
      };
    };
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x0)));
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x2)));
      };
    };
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x0)));
  };
exports["DecSetoid"]["_NameId 104 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x0)));
  };
exports["DecSetoid"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](x2)));
      };
    };
  };
exports["Preorder"] = {};
exports["Preorder"]["isPreorder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["Preorder"]["_NameId 152 16183279020424455842"] = {};
exports["Preorder"]["_NameId 152 16183279020424455842"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["Preorder"]["isPreorder"](x0));
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Preorder"]["isPreorder"](x3));
        };
      };
    };
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](exports["Preorder"]["isPreorder"](x0));
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](exports["Preorder"]["isPreorder"](x0));
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Preorder"]["isPreorder"](x3));
        };
      };
    };
  };
exports["Setoid"]["record"] = function (x0) {
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
exports["Preorder"]["_NameId 152 16183279020424455842"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Preorder"]["isPreorder"](x3));
        };
      };
    };
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Preorder"]["isPreorder"](x3));
        };
      };
    };
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["Eq"] = {};
exports["Preorder"]["_NameId 152 16183279020424455842"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["Preorder"]["isPreorder"](x3)));
        };
      };
    };
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["Preorder"]["isPreorder"](x0)));
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["Preorder"]["isPreorder"](x3)));
        };
      };
    };
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["Preorder"]["isPreorder"](x0)));
  };
exports["Preorder"]["_NameId 152 16183279020424455842"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](exports["Preorder"]["isPreorder"](x0)));
  };
exports["Poset"] = {};
exports["Poset"]["isPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["Poset"]["_NameId 210 16183279020424455842"] = {};
exports["Poset"]["_NameId 210 16183279020424455842"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["Poset"]["isPartialOrder"](x0));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0)));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3)));
        };
      };
    };
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0)));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0)));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3)));
        };
      };
    };
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3)));
        };
      };
    };
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3)));
        };
      };
    };
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["Eq"] = {};
exports["Poset"]["_NameId 210 16183279020424455842"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3))));
        };
      };
    };
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0))));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3))));
        };
      };
    };
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0))));
  };
exports["Poset"]["_NameId 210 16183279020424455842"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x0))));
  };
exports["Poset"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Preorder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["Poset"]["isPartialOrder"](x3)));
        };
      };
    };
  };
exports["DecPoset"] = {};
exports["DecPoset"]["isDecPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["DecPoset"]["DPO"] = {};
exports["DecPoset"]["DPO"]["_≟_"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["_≟_"](exports["DecPoset"]["isDecPartialOrder"](x0));
  };
exports["DecPoset"]["DPO"]["_≤?_"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["_≤?_"](exports["DecPoset"]["isDecPartialOrder"](x0));
  };
exports["DecPoset"]["DPO"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x0)));
  };
exports["DecPoset"]["DPO"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x0))));
  };
exports["DecPoset"]["DPO"]["isPartialOrder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x0));
  };
exports["DecPoset"]["DPO"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x0)));
  };
exports["DecPoset"]["DPO"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecPoset"]["DPO"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x0))));
  };
exports["DecPoset"]["DPO"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x0))));
  };
exports["DecPoset"]["DPO"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecPoset"]["DPO"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecPoset"]["DPO"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecPoset"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3)));
        };
      };
    };
  };
exports["DecPoset"]["_NameId 320 16183279020424455842"] = {};
exports["DecPoset"]["_NameId 320 16183279020424455842"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecPoset"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DecPoset"]["Eq"] = {};
exports["DecPoset"]["Eq"]["decSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecPoset"]["isDecPartialOrder"](x3)));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"] = {};
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["_≟_"](exports["DecPoset"]["isDecPartialOrder"](x3));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecPoset"]["isDecPartialOrder"](x3));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["DecPoset"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3)))));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["DecPoset"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecPoset"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3)))));
        };
      };
    };
  };
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsDecPartialOrder"]["isPartialOrder"](exports["DecPoset"]["isDecPartialOrder"](x3)))));
        };
      };
    };
  };
exports["StrictPartialOrder"] = {};
exports["StrictPartialOrder"]["isStrictPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["DecSetoid"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "Carrier": x0,
          "_≈_": x1,
          "isDecEquivalence": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"] = {};
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["<-resp-≈"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x0));
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["<-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x3)))(x4)(x5)(x6);
              };
            };
          };
        };
      };
    };
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["<-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x3)))(x4)(x5)(x6);
              };
            };
          };
        };
      };
    };
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x0));
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["trans"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x0));
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["Eq"] = {};
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x3)));
        };
      };
    };
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x0)));
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x3)));
        };
      };
    };
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x0)));
  };
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](exports["StrictPartialOrder"]["isStrictPartialOrder"](x0)));
  };
exports["DecStrictPartialOrder"] = {};
exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["DecStrictPartialOrder"]["strictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["StrictPartialOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["isStrictPartialOrder"](exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3)));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"] = {};
exports["DecStrictPartialOrder"]["Eq"]["decSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3)));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"] = {};
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["_≟_"](exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["isStrictPartialOrder"](exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3)));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["DecStrictPartialOrder"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["isStrictPartialOrder"](exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["DecStrictPartialOrder"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecStrictPartialOrder"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["isStrictPartialOrder"](exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3))));
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsDecStrictPartialOrder"]["isStrictPartialOrder"](exports["DecStrictPartialOrder"]["isDecStrictPartialOrder"](x3))));
        };
      };
    };
  };
exports["TotalOrder"] = {};
exports["TotalOrder"]["isTotalOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"] = {};
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0)));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0))));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["isPartialOrder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0)));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3))));
        };
      };
    };
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0))));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["total"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["total"](exports["TotalOrder"]["isTotalOrder"](x0));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0))));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3))));
        };
      };
    };
  };
exports["Preorder"]["record"] = function (x0) {
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
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3))));
        };
      };
    };
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3))));
        };
      };
    };
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["Eq"] = {};
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3)))));
        };
      };
    };
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0)))));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3)))));
        };
      };
    };
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0)))));
  };
exports["TotalOrder"]["_NameId 544 16183279020424455842"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x0)))));
  };
exports["TotalOrder"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](exports["TotalOrder"]["isTotalOrder"](x3)));
        };
      };
    };
  };
exports["TotalOrder"]["_NameId 582 16183279020424455842"] = {};
exports["TotalOrder"]["_NameId 582 16183279020424455842"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["TotalOrder"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DecTotalOrder"] = {};
exports["DecTotalOrder"]["isDecTotalOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["DecTotalOrder"]["DTO"] = {};
exports["DecTotalOrder"]["DTO"]["_≟_"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["_≟_"](exports["DecTotalOrder"]["isDecTotalOrder"](x0));
  };
exports["DecTotalOrder"]["DTO"]["_≤?_"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["_≤?_"](exports["DecTotalOrder"]["isDecTotalOrder"](x0));
  };
exports["DecTotalOrder"]["DTO"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0))));
  };
exports["DecTotalOrder"]["DTO"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0)))));
  };
exports["DecTotalOrder"]["DTO"]["isPartialOrder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0)));
  };
exports["DecTotalOrder"]["DTO"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0))));
  };
exports["DecTotalOrder"]["DTO"]["isTotalOrder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0));
  };
exports["DecTotalOrder"]["DTO"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3)))));
        };
      };
    };
  };
exports["DecTotalOrder"]["DTO"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0)))));
  };
exports["DecTotalOrder"]["DTO"]["total"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["total"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0)));
  };
exports["DecTotalOrder"]["DTO"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x0)))));
  };
exports["DecTotalOrder"]["DTO"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3)))));
        };
      };
    };
  };
exports["DecTotalOrder"]["DTO"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3)))));
        };
      };
    };
  };
exports["DecTotalOrder"]["DTO"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3)))));
        };
      };
    };
  };
exports["DecTotalOrder"]["totalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["TotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3)));
        };
      };
    };
  };
exports["DecTotalOrder"]["_NameId 666 16183279020424455842"] = {};
exports["DecTotalOrder"]["_NameId 666 16183279020424455842"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["TotalOrder"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecTotalOrder"]["totalOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DecTotalOrder"]["_NameId 666 16183279020424455842"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["TotalOrder"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecTotalOrder"]["totalOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"] = {};
exports["DecTotalOrder"]["Eq"]["decSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecTotalOrder"]["isDecTotalOrder"](x3)));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"] = {};
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["_≟_"](exports["DecTotalOrder"]["isDecTotalOrder"](x3));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecTotalOrder"]["isDecTotalOrder"](x3));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3)))));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["DecTotalOrder"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3))))));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["DecTotalOrder"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DecTotalOrder"]["Eq"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3))))));
        };
      };
    };
  };
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](exports["DecTotalOrder"]["isDecTotalOrder"](x3))))));
        };
      };
    };
  };
exports["StrictTotalOrder"] = {};
exports["StrictTotalOrder"]["isStrictTotalOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"] = {};
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["_<?_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["_<?_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["_≟_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["<-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Consequences["_NameId 200 6863766767261122522"]["trans∧tri⟶resp≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["compare"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x3)));
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["<-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3))))(x4)(x5)(x6);
              };
            };
          };
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["<-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3))))(x4)(x5)(x6);
              };
            };
          };
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["compare"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["compare"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x0));
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["isDecStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isDecStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isEquivalence"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x0));
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["isStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["trans"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x0));
  };
exports["StrictTotalOrder"]["strictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["StrictPartialOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2)(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3)));
        };
      };
    };
  };
exports["StrictTotalOrder"]["decSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3)));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"] = {};
exports["StrictTotalOrder"]["Eq"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["_≟_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isEquivalence"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["StrictTotalOrder"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isEquivalence"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x3)));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecEquivalence"]["isEquivalence"](exports["DecSetoid"]["isDecEquivalence"](exports["StrictTotalOrder"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["DecSetoid"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["StrictTotalOrder"]["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isEquivalence"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x3)));
        };
      };
    };
  };
exports["StrictTotalOrder"]["Eq"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["isEquivalence"](exports["StrictTotalOrder"]["isStrictTotalOrder"](x3)));
        };
      };
    };
  };
exports["Poset"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_≈_": x1,
            "_≤_": x2,
            "isPartialOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["DecPoset"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_≈_": x1,
            "_≤_": x2,
            "isDecPartialOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["StrictPartialOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_<_": x2,
            "_≈_": x1,
            "isStrictPartialOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["DecStrictPartialOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_<_": x2,
            "_≈_": x1,
            "isDecStrictPartialOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["TotalOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_≈_": x1,
            "_≤_": x2,
            "isTotalOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["DecTotalOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_≈_": x1,
            "_≤_": x2,
            "isDecTotalOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["StrictTotalOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "Carrier": x0,
            "_<_": x2,
            "_≈_": x1,
            "isStrictTotalOrder": x3,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            }
          };
        };
      };
    };
  };
exports["PartialSetoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["PartialSetoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["PartialSetoid"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["Setoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Setoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Setoid"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["DecSetoid"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["DecSetoid"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Preorder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Preorder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Preorder"]["_∼_"] = agdaRTS.primIntegerFromString("0");
exports["Poset"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Poset"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Poset"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["DecPoset"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["DecPoset"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DecPoset"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DecPoset"]["Eq"]["_NameId 328 16183279020424455842"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["StrictPartialOrder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["StrictPartialOrder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["StrictPartialOrder"]["_<_"] = agdaRTS.primIntegerFromString("0");
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["asym"] = agdaRTS.primIntegerFromString("0");
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["asymmetric"] = agdaRTS.primIntegerFromString("0");
exports["StrictPartialOrder"]["_NameId 382 16183279020424455842"]["irrefl"] = agdaRTS.primIntegerFromString("0");
exports["DecStrictPartialOrder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["DecStrictPartialOrder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DecStrictPartialOrder"]["_<_"] = agdaRTS.primIntegerFromString("0");
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DecStrictPartialOrder"]["Eq"]["_NameId 490 16183279020424455842"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["TotalOrder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["TotalOrder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["TotalOrder"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["DecTotalOrder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["DecTotalOrder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DecTotalOrder"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DecTotalOrder"]["Eq"]["_NameId 676 16183279020424455842"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["_<_"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["asym"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["_NameId 730 16183279020424455842"]["irrefl"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["Eq"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["StrictTotalOrder"]["Eq"]["Carrier"] = agdaRTS.primIntegerFromString("0");

