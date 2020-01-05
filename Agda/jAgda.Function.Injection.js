var agdaRTS = require("agda-rts");
var z_jAgda_Function_Equality = require("jAgda.Function.Equality");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_PropositionalEquality = require("jAgda.Relation.Binary.PropositionalEquality");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["Injection"] = {};
exports["Injection"]["to"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["Injection"]["injective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["Injection"]["_NameId 110 5577702095732305496"] = {};
exports["Injection"]["_NameId 110 5577702095732305496"]["_⟨$⟩_"] = function (x0) {
    return z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](exports["Injection"]["to"](x0));
  };
exports["Injection"]["_NameId 110 5577702095732305496"]["cong"] = function (x0) {
    return z_jAgda_Function_Equality["Π"]["cong"](exports["Injection"]["to"](x0));
  };
exports["injection"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["Injection"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["→-to-⟶"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x6) {
                return agdaRTS.primIntegerFromString("0");
              })(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))))(x4))(x5);
            };
          };
        };
      };
    };
  };
exports["id"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Injection"]["record"](z_jAgda_Function_Equality["id"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(function (x3) {
          return function (x4) {
            return function (x5) {
              return x5;
            };
          };
        });
      };
    };
  };
exports["_∘_"] = function (x0) {
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
                        return exports["Injection"]["record"](z_jAgda_Function_Equality["_∘_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Injection"]["to"](x9))(exports["Injection"]["to"](x10)))(function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return exports["Injection"]["injective"](x10)(x11)(x12)(exports["Injection"]["injective"](x9)(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](exports["Injection"]["to"](x10))(x11))(z_jAgda_Function_Equality["Π"]["_⟨$⟩_"](exports["Injection"]["to"](x10))(x12))(x13));
                            };
                          };
                        });
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
exports["Injection"]["record"] = function (x0) {
    return function (x1) {
      return {
        "injective": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "to": x0
      };
    };
  };
exports["Injective"] = agdaRTS.primIntegerFromString("0");
exports["_↣_"] = agdaRTS.primIntegerFromString("0");

