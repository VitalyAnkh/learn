var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["IsCongruent"] = {};
exports["IsCongruent"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "cong": x0,
          "isEquivalence₁": x1,
          "isEquivalence₂": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsCongruent"]["cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsCongruent"]["isEquivalence₁"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsCongruent"]["isEquivalence₂"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsCongruent"]["Eq₁"] = {};
exports["IsCongruent"]["Eq₁"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["isEquivalence₁"](x9));
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"] = {};
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₁"](x9);
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)));
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9));
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](x9));
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)));
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](x9));
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
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](x9));
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
exports["IsCongruent"]["Eq₂"] = {};
exports["IsCongruent"]["Eq₂"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["isEquivalence₂"](x9));
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"] = {};
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₂"](x9);
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)));
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9));
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](x9));
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)));
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](x9));
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
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](x9));
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
exports["IsInjection"] = {};
exports["IsInjection"]["isCongruent"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsInjection"]["injective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsInjection"]["_NameId 104 11888494884402587451"] = {};
exports["IsInjection"]["_NameId 104 11888494884402587451"]["cong"] = function (x0) {
    return exports["IsCongruent"]["cong"](exports["IsInjection"]["isCongruent"](x0));
  };
exports["IsInjection"]["_NameId 104 11888494884402587451"]["isEquivalence₁"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](x0));
  };
exports["IsInjection"]["_NameId 104 11888494884402587451"]["isEquivalence₂"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](x0));
  };
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"] = {};
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](x9));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9))));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9))));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"] = {};
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](x9));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9))));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9))));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](x9));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](x9)));
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
exports["IsSurjection"] = {};
exports["IsSurjection"]["isCongruent"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsSurjection"]["surjective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsSurjection"]["_NameId 174 11888494884402587451"] = {};
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["cong"] = function (x0) {
    return exports["IsCongruent"]["cong"](exports["IsSurjection"]["isCongruent"](x0));
  };
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["isEquivalence₁"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₁"](exports["IsSurjection"]["isCongruent"](x0));
  };
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["isEquivalence₂"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₂"](exports["IsSurjection"]["isCongruent"](x0));
  };
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"] = {};
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₁"](exports["IsSurjection"]["isCongruent"](x9));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9))));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9))));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"] = {};
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₂"](exports["IsSurjection"]["isCongruent"](x9));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9))));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9))));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsSurjection"]["isCongruent"](x9));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](exports["IsSurjection"]["isCongruent"](x9)));
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
exports["IsBijection"] = {};
exports["IsBijection"]["isInjection"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsBijection"]["surjective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsBijection"]["_NameId 244 11888494884402587451"] = {};
exports["IsBijection"]["_NameId 244 11888494884402587451"]["cong"] = function (x0) {
    return exports["IsCongruent"]["cong"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x0)));
  };
exports["IsBijection"]["_NameId 244 11888494884402587451"]["injective"] = function (x0) {
    return exports["IsInjection"]["injective"](exports["IsBijection"]["isInjection"](x0));
  };
exports["IsBijection"]["_NameId 244 11888494884402587451"]["isCongruent"] = function (x0) {
    return exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x0));
  };
exports["IsBijection"]["_NameId 244 11888494884402587451"]["isEquivalence₁"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x0)));
  };
exports["IsBijection"]["_NameId 244 11888494884402587451"]["isEquivalence₂"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x0)));
  };
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"] = {};
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"] = {};
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["partialSetoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9))));
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
exports["IsBijection"]["bijective"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["IsInjection"]["injective"](exports["IsBijection"]["isInjection"](x9)))(exports["IsBijection"]["surjective"](x9));
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
exports["IsBijection"]["isSurjection"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["IsSurjection"]["record"](exports["IsInjection"]["isCongruent"](exports["IsBijection"]["isInjection"](x9)))(exports["IsBijection"]["surjective"](x9));
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
exports["IsLeftInverse"] = {};
exports["IsLeftInverse"]["isCongruent"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsLeftInverse"]["cong₂"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsLeftInverse"]["inverseˡ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"] = {};
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["cong"] = function (x0) {
    return exports["IsCongruent"]["cong"](exports["IsLeftInverse"]["isCongruent"](x0));
  };
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["isEquivalence₁"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](x0));
  };
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["isEquivalence₂"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](x0));
  };
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"] = {};
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["isEquivalence"] = function (x0) {
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
                        return exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](x10));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10))));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["partialSetoid"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10))));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["setoid"] = function (x0) {
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
                        return exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["sym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"] = {};
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["isEquivalence"] = function (x0) {
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
                        return exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](x10));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10))));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["partialSetoid"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10))));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["setoid"] = function (x0) {
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
                        return exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](x10));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["sym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"] = {};
exports["IsRightInverse"]["isCongruent"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsRightInverse"]["cong₂"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsRightInverse"]["inverseʳ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsRightInverse"]["_NameId 408 11888494884402587451"] = {};
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["cong"] = function (x0) {
    return exports["IsCongruent"]["cong"](exports["IsRightInverse"]["isCongruent"](x0));
  };
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["isEquivalence₁"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₁"](exports["IsRightInverse"]["isCongruent"](x0));
  };
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["isEquivalence₂"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₂"](exports["IsRightInverse"]["isCongruent"](x0));
  };
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"] = {};
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["isEquivalence"] = function (x0) {
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
                        return exports["IsCongruent"]["isEquivalence₁"](exports["IsRightInverse"]["isCongruent"](x10));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10))));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["partialSetoid"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10))));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["setoid"] = function (x0) {
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
                        return exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["sym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"] = {};
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["isEquivalence"] = function (x0) {
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
                        return exports["IsCongruent"]["isEquivalence₂"](exports["IsRightInverse"]["isCongruent"](x10));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10))));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["partialSetoid"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10))));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["setoid"] = function (x0) {
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
                        return exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsRightInverse"]["isCongruent"](x10));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["sym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](exports["IsRightInverse"]["isCongruent"](x10)));
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
exports["IsInverse"] = {};
exports["IsInverse"]["isLeftInverse"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsInverse"]["inverseʳ"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"] = {};
exports["IsInverse"]["_NameId 482 11888494884402587451"]["cong"] = function (x0) {
    return exports["IsCongruent"]["cong"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x0)));
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"]["cong₂"] = function (x0) {
    return exports["IsLeftInverse"]["cong₂"](exports["IsInverse"]["isLeftInverse"](x0));
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"]["inverseˡ"] = function (x0) {
    return exports["IsLeftInverse"]["inverseˡ"](exports["IsInverse"]["isLeftInverse"](x0));
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"]["isCongruent"] = function (x0) {
    return exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x0));
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"]["isEquivalence₁"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x0)));
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"]["isEquivalence₂"] = function (x0) {
    return exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x0)));
  };
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"] = {};
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["isEquivalence"] = function (x0) {
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
                        return exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["partialSetoid"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["setoid"] = function (x0) {
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
                        return exports["IsCongruent"]["Eq₁"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["sym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₁"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"] = {};
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["isEquivalence"] = function (x0) {
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
                        return exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["partialSetoid"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Bundles["Setoid"]["partialSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["setoid"] = function (x0) {
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
                        return exports["IsCongruent"]["Eq₂"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["sym"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["trans"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](exports["IsCongruent"]["isEquivalence₂"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10))));
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
exports["IsInverse"]["isRightInverse"] = function (x0) {
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
                        return exports["IsRightInverse"]["record"](exports["IsLeftInverse"]["isCongruent"](exports["IsInverse"]["isLeftInverse"](x10)))(exports["IsLeftInverse"]["cong₂"](exports["IsInverse"]["isLeftInverse"](x10)))(exports["IsInverse"]["inverseʳ"](x10));
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
exports["IsInverse"]["inverse"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["IsLeftInverse"]["inverseˡ"](exports["IsInverse"]["isLeftInverse"](x10)))(exports["IsInverse"]["inverseʳ"](x10));
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
exports["IsInjection"]["record"] = function (x0) {
    return function (x1) {
      return {
        "injective": x1,
        "isCongruent": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsSurjection"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isCongruent": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["IsBijection"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isInjection": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["IsLeftInverse"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "cong₂": x1,
          "inverseˡ": x2,
          "isCongruent": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsRightInverse"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "cong₂": x1,
          "inverseʳ": x2,
          "isCongruent": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsInverse"]["record"] = function (x0) {
    return function (x1) {
      return {
        "inverseʳ": x1,
        "isLeftInverse": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsCongruent"]["Eq₁"]["_NameId 42 11888494884402587451"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsCongruent"]["Eq₂"]["_NameId 68 11888494884402587451"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₁"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsInjection"]["_NameId 104 11888494884402587451"]["Eq₂"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₁"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsSurjection"]["_NameId 174 11888494884402587451"]["Eq₂"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₁"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsBijection"]["_NameId 244 11888494884402587451"]["Eq₂"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₁"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsLeftInverse"]["_NameId 330 11888494884402587451"]["Eq₂"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₁"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsRightInverse"]["_NameId 408 11888494884402587451"]["Eq₂"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₁"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["IsInverse"]["_NameId 482 11888494884402587451"]["Eq₂"]["Carrier"] = agdaRTS.primIntegerFromString("0");

