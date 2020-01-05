var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_PropositionalEquality = require("jAgda.Relation.Binary.PropositionalEquality");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");

exports["_≟_"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  };
exports["≡-total"] = function (x0) {
    return function (x1) {
      return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
    };
  };
exports["≤-total"] = function (x0) {
    return function (x1) {
      return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
    };
  };
exports["_≤?_"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  };
exports["≡-setoid"] = z_jAgda_Relation_Binary_PropositionalEquality["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
exports["≡-decSetoid"] = z_jAgda_Relation_Binary_PropositionalEquality["decSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  });
exports["≡-antisym"] = agdaRTS.primIntegerFromString("0");
exports["≡-isPreorder"] = z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(function (x0) {
    return function (x1) {
      return function (x2) {
        return x2;
      };
    };
  })(function (x0) {
    return function (x1) {
      return function (x2) {
        return agdaRTS.primIntegerFromString("0");
      };
    };
  });
exports["≡-isPartialOrder"] = z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["record"](exports["≡-isPreorder"])(function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2;
        };
      };
    };
  });
exports["≡-isTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["record"](exports["≡-isPartialOrder"])(function (x0) {
    return function (x1) {
      return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
    };
  });
exports["≡-isDecTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["record"](exports["≡-isTotalOrder"])(function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  })(function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  });
exports["≡-poset"] = z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≡-isPartialOrder"]);
exports["≡-decTotalOrder"] = z_jAgda_Relation_Binary_Bundles["DecTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≡-isDecTotalOrder"]);
exports["≤-reflexive"] = agdaRTS.primIntegerFromString("0");
exports["≤-trans"] = agdaRTS.primIntegerFromString("0");
exports["≤-antisym"] = agdaRTS.primIntegerFromString("0");
exports["≤-isPreorder"] = z_jAgda_Relation_Binary_Structures["IsPreorder"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["isEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(function (x0) {
    return function (x1) {
      return function (x2) {
        return agdaRTS.primIntegerFromString("0");
      };
    };
  })(function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return agdaRTS.primIntegerFromString("0");
          };
        };
      };
    };
  });
exports["≤-isPartialOrder"] = z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["record"](exports["≤-isPreorder"])(function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return agdaRTS.primIntegerFromString("0");
        };
      };
    };
  });
exports["≤-isTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["record"](exports["≤-isPartialOrder"])(function (x0) {
    return function (x1) {
      return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
    };
  });
exports["≤-isDecTotalOrder"] = z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["record"](exports["≤-isTotalOrder"])(function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  })(function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0")));
    };
  });
exports["≤-poset"] = z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isPartialOrder"]);
exports["≤-decTotalOrder"] = z_jAgda_Relation_Binary_Bundles["DecTotalOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≤-isDecTotalOrder"]);

