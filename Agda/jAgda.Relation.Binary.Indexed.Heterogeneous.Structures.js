var agdaRTS = require("agda-rts");

exports["IsIndexedEquivalence"] = {};
exports["IsIndexedEquivalence"]["refl"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsIndexedEquivalence"]["sym"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsIndexedEquivalence"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          },
          "refl": x0,
          "sym": x1,
          "trans": x2
        };
      };
    };
  };
exports["IsIndexedEquivalence"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsIndexedEquivalence"]["reflexive"] = function (x0) {
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
                        return exports["IsIndexedEquivalence"]["refl"](x6)(x7)(x8);
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
exports["IsIndexedPreorder"] = {};
exports["IsIndexedPreorder"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsIndexedPreorder"]["reflexive"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsIndexedPreorder"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsIndexedPreorder"]["Eq"] = {};
exports["IsIndexedPreorder"]["Eq"]["refl"] = function (x0) {
    return exports["IsIndexedEquivalence"]["refl"](exports["IsIndexedPreorder"]["isEquivalence"](x0));
  };
exports["IsIndexedPreorder"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsIndexedEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsIndexedPreorder"]["isEquivalence"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsIndexedPreorder"]["Eq"]["sym"] = function (x0) {
    return exports["IsIndexedEquivalence"]["sym"](exports["IsIndexedPreorder"]["isEquivalence"](x0));
  };
exports["IsIndexedPreorder"]["Eq"]["trans"] = function (x0) {
    return exports["IsIndexedEquivalence"]["trans"](exports["IsIndexedPreorder"]["isEquivalence"](x0));
  };
exports["IsIndexedPreorder"]["refl"] = function (x0) {
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
                        return exports["IsIndexedPreorder"]["reflexive"](x8)(x9)(x9)(x10)(x10)(exports["IsIndexedEquivalence"]["refl"](exports["IsIndexedPreorder"]["isEquivalence"](x8))(x9)(x10));
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
exports["IsIndexedPreorder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "isEquivalence": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          },
          "reflexive": x1,
          "trans": x2
        };
      };
    };
  };

