var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["IsJoinSemilattice"] = {};
exports["IsJoinSemilattice"]["isPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsJoinSemilattice"]["supremum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsJoinSemilattice"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](x7)(x8)(x9));
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
exports["IsJoinSemilattice"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](x7)(x8)(x9)));
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
exports["IsJoinSemilattice"]["∨-least"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](x7)(x8)(x9)))(x10);
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
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"] = {};
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsJoinSemilattice"]["isPartialOrder"](x0));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0)));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0)));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0)));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["Eq"] = {};
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0))));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0))));
  };
exports["IsJoinSemilattice"]["_NameId 132 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](x0))));
  };
exports["JoinSemilattice"] = {};
exports["JoinSemilattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["JoinSemilattice"]["isJoinSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"] = {};
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0)));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0))));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0)));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))));
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0))));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsJoinSemilattice"]["supremum"](exports["JoinSemilattice"]["isJoinSemilattice"](x0));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0))));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))));
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))));
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3))));
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["Eq"] = {};
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3)))));
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0)))));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3)))));
        };
      };
    };
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0)))));
  };
exports["JoinSemilattice"]["_NameId 198 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x0)))));
  };
exports["JoinSemilattice"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsJoinSemilattice"]["isPartialOrder"](exports["JoinSemilattice"]["isJoinSemilattice"](x3)));
        };
      };
    };
  };
exports["IsJoinSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isPartialOrder": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "supremum": x1
      };
    };
  };
exports["JoinSemilattice"]["_NameId 242 10121983745622306785"] = {};
exports["JoinSemilattice"]["_NameId 242 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"] = {};
exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsBoundedJoinSemilattice"]["minimum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"] = {};
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0)));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0))));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0)));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0))));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0))));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["x≤x∨y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))(x9)(x10));
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
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["y≤x∨y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))(x9)(x10)));
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
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["∨-least"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))(x9)(x10)))(x11);
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
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["Eq"] = {};
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0)))));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0)))));
  };
exports["IsBoundedJoinSemilattice"]["_NameId 288 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](x0)))));
  };
exports["BoundedJoinSemilattice"] = {};
exports["BoundedJoinSemilattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["BoundedJoinSemilattice"]["⊥"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"] = {};
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0)))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0)));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["minimum"] = function (x0) {
    return exports["IsBoundedJoinSemilattice"]["minimum"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0)))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0)));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0)))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["Eq"] = {};
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3))))));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0))))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3))))));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0))))));
  };
exports["BoundedJoinSemilattice"]["_NameId 368 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsJoinSemilattice"]["isPartialOrder"](exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x0))))));
  };
exports["BoundedJoinSemilattice"]["joinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedJoinSemilattice"]["_∨_"](x3))(exports["IsBoundedJoinSemilattice"]["isJoinSemilattice"](exports["BoundedJoinSemilattice"]["isBoundedJoinSemilattice"](x3)));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["joinSemiLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedJoinSemilattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 418 10121983745622306785"] = {};
exports["BoundedJoinSemilattice"]["_NameId 418 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedJoinSemilattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["BoundedJoinSemilattice"]["_NameId 418 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedJoinSemilattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["IsMeetSemilattice"] = {};
exports["IsMeetSemilattice"]["isPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsMeetSemilattice"]["infimum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsMeetSemilattice"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](x7)(x8)(x9));
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
exports["IsMeetSemilattice"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](x7)(x8)(x9)));
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
exports["IsMeetSemilattice"]["∧-greatest"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](x7)(x9)(x10)))(x8);
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
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"] = {};
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsMeetSemilattice"]["isPartialOrder"](x0));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0)));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0)));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0)));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["Eq"] = {};
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0))));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x7))));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0))));
  };
exports["IsMeetSemilattice"]["_NameId 502 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](x0))));
  };
exports["MeetSemilattice"] = {};
exports["MeetSemilattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x4;
      }
    });
  };
exports["MeetSemilattice"]["isMeetSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5) {
        return x5;
      }
    });
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"] = {};
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0)));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsMeetSemilattice"]["infimum"](exports["MeetSemilattice"]["isMeetSemilattice"](x0));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0))));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0)));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0))));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0))));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3))));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["Eq"] = {};
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3)))));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0)))));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3)))));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0)))));
  };
exports["MeetSemilattice"]["_NameId 568 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x0)))));
  };
exports["MeetSemilattice"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsMeetSemilattice"]["isPartialOrder"](exports["MeetSemilattice"]["isMeetSemilattice"](x3)));
        };
      };
    };
  };
exports["MeetSemilattice"]["_NameId 612 10121983745622306785"] = {};
exports["MeetSemilattice"]["_NameId 612 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MeetSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"] = {};
exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsBoundedMeetSemilattice"]["maximum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"] = {};
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0)));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0))));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0)));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0))));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0))));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["x∧y≤x"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))(x9)(x10));
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
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["x∧y≤y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))(x9)(x10)));
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
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["∧-greatest"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))(x10)(x11)))(x9);
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
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["Eq"] = {};
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0)))));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0)))));
  };
exports["IsBoundedMeetSemilattice"]["_NameId 658 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](x0)))));
  };
exports["BoundedMeetSemilattice"] = {};
exports["BoundedMeetSemilattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["BoundedMeetSemilattice"]["⊤"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"] = {};
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0)));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0)))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0)));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["maximum"] = function (x0) {
    return exports["IsBoundedMeetSemilattice"]["maximum"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0)))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0)))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)))));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["Eq"] = {};
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3))))));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0))))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3))))));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0))))));
  };
exports["BoundedMeetSemilattice"]["_NameId 738 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsMeetSemilattice"]["isPartialOrder"](exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x0))))));
  };
exports["BoundedMeetSemilattice"]["meetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["MeetSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedMeetSemilattice"]["_∧_"](x3))(exports["IsBoundedMeetSemilattice"]["isMeetSemilattice"](exports["BoundedMeetSemilattice"]["isBoundedMeetSemilattice"](x3)));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["meetSemiLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedMeetSemilattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 788 10121983745622306785"] = {};
exports["BoundedMeetSemilattice"]["_NameId 788 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["MeetSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedMeetSemilattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["BoundedMeetSemilattice"]["_NameId 788 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MeetSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedMeetSemilattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["IsLattice"] = {};
exports["IsLattice"]["isPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsLattice"]["supremum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsLattice"]["infimum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsLattice"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsJoinSemilattice"]["record"](exports["IsLattice"]["isPartialOrder"](x8))(exports["IsLattice"]["supremum"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsMeetSemilattice"]["record"](exports["IsLattice"]["isPartialOrder"](x8))(exports["IsLattice"]["infimum"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 844 10121983745622306785"] = {};
exports["IsLattice"]["_NameId 844 10121983745622306785"]["x≤x∨y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x9)(x10));
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
exports["IsLattice"]["_NameId 844 10121983745622306785"]["y≤x∨y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x9)(x10)));
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
exports["IsLattice"]["_NameId 844 10121983745622306785"]["∨-least"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x9)(x10)))(x11);
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
  };
exports["IsLattice"]["_NameId 852 10121983745622306785"] = {};
exports["IsLattice"]["_NameId 852 10121983745622306785"]["x∧y≤x"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x9)(x10));
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
exports["IsLattice"]["_NameId 852 10121983745622306785"]["x∧y≤y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x9)(x10)));
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
exports["IsLattice"]["_NameId 852 10121983745622306785"]["∧-greatest"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x10)(x11)))(x9);
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
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"] = {};
exports["IsLattice"]["_NameId 860 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](x0));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0)));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0)));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0)));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x8)));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["Eq"] = {};
exports["IsLattice"]["_NameId 860 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0))));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0))));
  };
exports["IsLattice"]["_NameId 860 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](x0))));
  };
exports["Lattice"] = {};
exports["Lattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["Lattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["Lattice"]["isLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["Lattice"]["_NameId 930 10121983745622306785"] = {};
exports["Lattice"]["_NameId 930 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0)));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsLattice"]["infimum"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0))));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0)));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3))));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0))));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsLattice"]["supremum"](exports["Lattice"]["isLattice"](x0));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0))));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3))));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3))));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3))));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["Eq"] = {};
exports["Lattice"]["_NameId 930 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3)))));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0)))));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3)))));
        };
      };
    };
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0)))));
  };
exports["Lattice"]["_NameId 930 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x0)))));
  };
exports["Lattice"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](x3)))));
        };
      };
    };
  };
exports["Lattice"]["joinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["_∨_"](x3))(exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)));
        };
      };
    };
  };
exports["Lattice"]["meetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["MeetSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["_∧_"](x3))(exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](x3)));
        };
      };
    };
  };
exports["Lattice"]["_NameId 990 10121983745622306785"] = {};
exports["Lattice"]["_NameId 990 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["Lattice"]["_NameId 990 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["IsDistributiveLattice"] = {};
exports["IsDistributiveLattice"]["isLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsDistributiveLattice"]["∧-distribˡ-∨"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"] = {};
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0)));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsLattice"]["infimum"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0))));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0)));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0))));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsLattice"]["supremum"](exports["IsDistributiveLattice"]["isLattice"](x0));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0))));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["x∧y≤x"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8)))(x9)(x10));
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
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["x∧y≤y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8)))(x9)(x10)));
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
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["x≤x∨y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8)))(x9)(x10));
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
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["y≤x∨y"] = function (x0) {
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
                        return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8)))(x9)(x10)));
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
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["∧-greatest"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8)))(x10)(x11)))(x9);
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
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["∨-least"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDistributiveLattice"]["isLattice"](x8)))(x9)(x10)))(x11);
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
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x8))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["Eq"] = {};
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0)))));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x8)))));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0)))));
  };
exports["IsDistributiveLattice"]["_NameId 1038 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](x0)))));
  };
exports["DistributiveLattice"] = {};
exports["DistributiveLattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x4;
      }
    });
  };
exports["DistributiveLattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x5;
      }
    });
  };
exports["DistributiveLattice"]["isDistributiveLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6) {
        return x6;
      }
    });
  };
exports["DistributiveLattice"]["_NameId 1130 10121983745622306785"] = {};
exports["DistributiveLattice"]["_NameId 1130 10121983745622306785"]["∧-distribˡ-∨"] = function (x0) {
    return exports["IsDistributiveLattice"]["∧-distribˡ-∨"](exports["DistributiveLattice"]["isDistributiveLattice"](x0));
  };
exports["DistributiveLattice"]["_NameId 1134 10121983745622306785"] = {};
exports["DistributiveLattice"]["_NameId 1134 10121983745622306785"]["isLattice"] = function (x0) {
    return exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x0));
  };
exports["DistributiveLattice"]["lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["_∨_"](x3))(exports["DistributiveLattice"]["_∧_"](x3))(exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"] = {};
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["antisym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["infimum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["infimum"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["isLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["isPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["joinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["meetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["supremum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["supremum"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["Eq"] = {};
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3))))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["Lattice"]["isLattice"](exports["DistributiveLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3))))));
        };
      };
    };
  };
exports["DistributiveLattice"]["_NameId 1140 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsDistributiveLattice"]["isLattice"](exports["DistributiveLattice"]["isDistributiveLattice"](x3))))));
        };
      };
    };
  };
exports["IsBoundedLattice"] = {};
exports["IsBoundedLattice"]["isLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsBoundedLattice"]["maximum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsBoundedLattice"]["minimum"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"] = {};
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0)));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsLattice"]["infimum"](exports["IsBoundedLattice"]["isLattice"](x0));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0))));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
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
                        return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
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
                        return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0)));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["refl"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x10))));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0))));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsLattice"]["supremum"](exports["IsBoundedLattice"]["isLattice"](x0));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0))));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["x∧y≤x"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(x11)(x12));
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
    };
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["x∧y≤y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(x11)(x12)));
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
    };
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["x≤x∨y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(x11)(x12));
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
    };
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["y≤x∨y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(x11)(x12)));
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
    };
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["∧-greatest"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(x12)(x13)))(x11);
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
      };
    };
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["∨-least"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(x11)(x12)))(x13);
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
      };
    };
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["∼-resp-≈"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x10))));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x10))));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x10))));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["Eq"] = {};
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x10)))));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0)))));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
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
                        return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x10)))));
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
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0)))));
  };
exports["IsBoundedLattice"]["_NameId 1260 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](x0)))));
  };
exports["IsBoundedLattice"]["isBoundedJoinSemilattice"] = function (x0) {
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
                        return exports["IsBoundedJoinSemilattice"]["record"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(exports["IsBoundedLattice"]["minimum"](x10));
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
exports["IsBoundedLattice"]["isBoundedMeetSemilattice"] = function (x0) {
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
                        return exports["IsBoundedMeetSemilattice"]["record"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](x10)))(exports["IsBoundedLattice"]["maximum"](x10));
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
exports["BoundedLattice"] = {};
exports["BoundedLattice"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x4;
      }
    });
  };
exports["BoundedLattice"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x5;
      }
    });
  };
exports["BoundedLattice"]["⊤"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x6;
      }
    });
  };
exports["BoundedLattice"]["⊥"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x7;
      }
    });
  };
exports["BoundedLattice"]["isBoundedLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8) {
        return x8;
      }
    });
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"] = {};
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsLattice"]["infimum"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0)));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isBoundedJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isBoundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](x3));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isBoundedMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isBoundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](x3));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0)))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isLattice"] = function (x0) {
    return exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0)));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["maximum"] = function (x0) {
    return exports["IsBoundedLattice"]["maximum"](exports["BoundedLattice"]["isBoundedLattice"](x0));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["minimum"] = function (x0) {
    return exports["IsBoundedLattice"]["minimum"](exports["BoundedLattice"]["isBoundedLattice"](x0));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0)))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsLattice"]["supremum"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0)));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0)))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["Eq"] = {};
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0))))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3))))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0))))));
  };
exports["BoundedLattice"]["_NameId 1364 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x0))))));
  };
exports["BoundedLattice"]["boundedJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedJoinSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["_∨_"](x3))(exports["BoundedLattice"]["⊥"](x3))(exports["IsBoundedLattice"]["isBoundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](x3)));
        };
      };
    };
  };
exports["BoundedLattice"]["boundedMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedMeetSemilattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["_∧_"](x3))(exports["BoundedLattice"]["⊤"](x3))(exports["IsBoundedLattice"]["isBoundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](x3)));
        };
      };
    };
  };
exports["BoundedLattice"]["lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["_∨_"](x3))(exports["BoundedLattice"]["_∧_"](x3))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](x3)));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1434 10121983745622306785"] = {};
exports["BoundedLattice"]["_NameId 1434 10121983745622306785"]["joinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1434 10121983745622306785"]["meetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1434 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1434 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BoundedLattice"]["_NameId 1434 10121983745622306785"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["IsHeytingAlgebra"] = {};
exports["IsHeytingAlgebra"]["isBoundedLattice"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsHeytingAlgebra"]["exponential"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsHeytingAlgebra"]["transpose-⇨"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsHeytingAlgebra"]["exponential"](x11)(x12)(x13)(x14));
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
        };
      };
    };
  };
exports["IsHeytingAlgebra"]["transpose-∧"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsHeytingAlgebra"]["exponential"](x11)(x12)(x13)(x14));
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
        };
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"] = {};
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsLattice"]["infimum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0)));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isBoundedJoinSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsBoundedLattice"]["isBoundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsHeytingAlgebra"]["isBoundedLattice"](x11));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isBoundedMeetSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsBoundedLattice"]["isBoundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsHeytingAlgebra"]["isBoundedLattice"](x11));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0)))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11)));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isLattice"] = function (x0) {
    return exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11)));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0)));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["maximum"] = function (x0) {
    return exports["IsBoundedLattice"]["maximum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["minimum"] = function (x0) {
    return exports["IsBoundedLattice"]["minimum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["refl"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11)))));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0)))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsLattice"]["supremum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0)));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0)))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["x∧y≤x"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))(x12)(x13));
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
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["x∧y≤y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))(x12)(x13)));
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
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["x≤x∨y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))(x12)(x13));
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
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["y≤x∨y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))(x12)(x13)));
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
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["∧-greatest"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))(x13)(x14)))(x12);
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
        };
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["∨-least"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))(x12)(x13)))(x14);
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
        };
      };
    };
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["∼-resp-≈"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11)))));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11)))));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11)))));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["Eq"] = {};
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0))))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x11))))));
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
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0))))));
  };
exports["IsHeytingAlgebra"]["_NameId 1532 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](x0))))));
  };
exports["HeytingAlgebra"] = {};
exports["HeytingAlgebra"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x4;
      }
    });
  };
exports["HeytingAlgebra"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x5;
      }
    });
  };
exports["HeytingAlgebra"]["_⇨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x6;
      }
    });
  };
exports["HeytingAlgebra"]["⊤"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x7;
      }
    });
  };
exports["HeytingAlgebra"]["⊥"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x8;
      }
    });
  };
exports["HeytingAlgebra"]["isHeytingAlgebra"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x9;
      }
    });
  };
exports["HeytingAlgebra"]["boundedLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["_∨_"](x3))(exports["HeytingAlgebra"]["_∧_"](x3))(exports["HeytingAlgebra"]["⊤"](x3))(exports["HeytingAlgebra"]["⊥"](x3))(exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1648 10121983745622306785"] = {};
exports["HeytingAlgebra"]["_NameId 1648 10121983745622306785"]["exponential"] = function (x0) {
    return exports["IsHeytingAlgebra"]["exponential"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x0));
  };
exports["HeytingAlgebra"]["_NameId 1648 10121983745622306785"]["transpose-⇨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsHeytingAlgebra"]["exponential"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1648 10121983745622306785"]["transpose-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsHeytingAlgebra"]["exponential"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"] = {};
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["antisym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["boundedJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["boundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["boundedMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["boundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["infimum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["infimum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isBoundedJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isBoundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isBoundedLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isBoundedMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isBoundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["isPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["joinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["maximum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["maximum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["meetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["minimum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["minimum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["supremum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["supremum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["Eq"] = {};
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)))))));
        };
      };
    };
  };
exports["HeytingAlgebra"]["_NameId 1656 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](x3)))))));
        };
      };
    };
  };
exports["IsBooleanAlgebra"] = {};
exports["IsBooleanAlgebra"]["_⇨_"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return x6(x8(x12))(x13);
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
      };
    };
  };
exports["IsBooleanAlgebra"]["isHeytingAlgebra"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"] = {};
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["antisym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["exponential"] = function (x0) {
    return exports["IsHeytingAlgebra"]["exponential"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["infimum"] = function (x0) {
    return exports["IsLattice"]["infimum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isBoundedJoinSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsBoundedLattice"]["isBoundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isBoundedLattice"] = function (x0) {
    return exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isBoundedMeetSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsBoundedLattice"]["isBoundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isEquivalence"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0))))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isLattice"] = function (x0) {
    return exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
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
                        return function (x11) {
                          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["isPreorder"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["maximum"] = function (x0) {
    return exports["IsBoundedLattice"]["maximum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["minimum"] = function (x0) {
    return exports["IsBoundedLattice"]["minimum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["refl"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["reflexive"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0))))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["supremum"] = function (x0) {
    return exports["IsLattice"]["supremum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0))))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["transpose-⇨"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsHeytingAlgebra"]["exponential"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))(x12)(x13)(x14));
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
        };
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["transpose-∧"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsHeytingAlgebra"]["exponential"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))(x12)(x13)(x14));
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
        };
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["x∧y≤x"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))(x12)(x13));
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
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["x∧y≤y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))(x12)(x13)));
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
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["x≤x∨y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))(x12)(x13));
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
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["y≤x∨y"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))(x12)(x13)));
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
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["∧-greatest"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))(x13)(x14)))(x12);
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
        };
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["∨-least"] = function (x0) {
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
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return function (x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))(x12)(x13)))(x14);
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
        };
      };
    };
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["∼-resp-≈"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11))))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["Eq"] = {};
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)))))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
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
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x11)))))));
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
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)))))));
  };
exports["IsBooleanAlgebra"]["_NameId 1800 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](x0)))))));
  };
exports["BooleanAlgebra"] = {};
exports["BooleanAlgebra"]["_∨_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x4;
      }
    });
  };
exports["BooleanAlgebra"]["_∧_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x5;
      }
    });
  };
exports["BooleanAlgebra"]["¬_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x6;
      }
    });
  };
exports["BooleanAlgebra"]["⊤"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x7;
      }
    });
  };
exports["BooleanAlgebra"]["⊥"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x8;
      }
    });
  };
exports["BooleanAlgebra"]["isBooleanAlgebra"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4, x5, x6, x7, x8, x9) {
        return x9;
      }
    });
  };
exports["BooleanAlgebra"]["_NameId 1922 10121983745622306785"] = {};
exports["BooleanAlgebra"]["_NameId 1922 10121983745622306785"]["isHeytingAlgebra"] = function (x0) {
    return exports["IsBooleanAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x0));
  };
exports["BooleanAlgebra"]["heytingAlgebra"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["HeytingAlgebra"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["_∨_"](x3))(exports["BooleanAlgebra"]["_∧_"](x3))(function (x4) {
            return exports["BooleanAlgebra"]["_∨_"](x3)(exports["BooleanAlgebra"]["¬_"](x3)(x4));
          })(exports["BooleanAlgebra"]["⊤"](x3))(exports["BooleanAlgebra"]["⊥"](x3))(exports["IsBooleanAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x3)));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"] = {};
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["_⇨_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["BooleanAlgebra"]["_∨_"](x3)(exports["BooleanAlgebra"]["¬_"](x3)(x4));
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["antisym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["boundedJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["boundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["boundedLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["boundedMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["boundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["exponential"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsHeytingAlgebra"]["exponential"](exports["IsBooleanAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x3)));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["infimum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["infimum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isBoundedJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isBoundedJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isBoundedLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isBoundedMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isBoundedMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isHeytingAlgebra"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBooleanAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["isBooleanAlgebra"](x3));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isJoinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isLattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isMeetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["isPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["joinSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["lattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["maximum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["maximum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["meetSemilattice"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["meetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["minimum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsBoundedLattice"]["minimum"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["preorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["JoinSemilattice"]["poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Lattice"]["joinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["Lattice"]["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BoundedLattice"]["lattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["supremum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["IsLattice"]["supremum"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["transpose-⇨"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsHeytingAlgebra"]["exponential"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["transpose-∧"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsHeytingAlgebra"]["exponential"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["x∧y≤x"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["x∧y≤y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["x≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))(x4)(x5));
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["y≤x∨y"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))(x4)(x5)));
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["∧-greatest"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsMeetSemilattice"]["infimum"](exports["IsLattice"]["isMeetSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))(x5)(x6)))(x4);
              };
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["∨-least"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsJoinSemilattice"]["supremum"](exports["IsLattice"]["isJoinSemilattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))(x4)(x5)))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["Eq"] = {};
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["Eq"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["BoundedLattice"]["isBoundedLattice"](exports["HeytingAlgebra"]["boundedLattice"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["Eq"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))));
        };
      };
    };
  };
exports["BooleanAlgebra"]["_NameId 1928 10121983745622306785"]["Eq"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](exports["IsLattice"]["isPartialOrder"](exports["IsBoundedLattice"]["isLattice"](exports["IsHeytingAlgebra"]["isBoundedLattice"](exports["HeytingAlgebra"]["isHeytingAlgebra"](exports["BooleanAlgebra"]["heytingAlgebra"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))))));
        };
      };
    };
  };
exports["JoinSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∨_": x3,
              "_≈_": x1,
              "_≤_": x2,
              "isJoinSemilattice": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              }
            };
          };
        };
      };
    };
  };
exports["IsBoundedJoinSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isJoinSemilattice": x0,
        "minimum": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["BoundedJoinSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "Carrier": x0,
                "_∨_": x3,
                "_≈_": x1,
                "_≤_": x2,
                "isBoundedJoinSemilattice": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                },
                "⊥": x4
              };
            };
          };
        };
      };
    };
  };
exports["IsMeetSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "infimum": x1,
        "isPartialOrder": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["MeetSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return {
              "Carrier": x0,
              "_∧_": x3,
              "_≈_": x1,
              "_≤_": x2,
              "isMeetSemilattice": x4,
              "record": function (x5) {
                return x5["record"](x0, x1, x2, x3, x4);
              }
            };
          };
        };
      };
    };
  };
exports["IsBoundedMeetSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMeetSemilattice": x0,
        "maximum": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["BoundedMeetSemilattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "Carrier": x0,
                "_∧_": x3,
                "_≈_": x1,
                "_≤_": x2,
                "isBoundedMeetSemilattice": x5,
                "record": function (x6) {
                  return x6["record"](x0, x1, x2, x3, x4, x5);
                },
                "⊤": x4
              };
            };
          };
        };
      };
    };
  };
exports["IsLattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "infimum": x2,
          "isPartialOrder": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          },
          "supremum": x1
        };
      };
    };
  };
exports["Lattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "Carrier": x0,
                "_∧_": x4,
                "_∨_": x3,
                "_≈_": x1,
                "_≤_": x2,
                "isLattice": x5,
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
exports["IsDistributiveLattice"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isLattice": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "∧-distribˡ-∨": x1
      };
    };
  };
exports["DistributiveLattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return {
                "Carrier": x0,
                "_∧_": x4,
                "_∨_": x3,
                "_≈_": x1,
                "_≤_": x2,
                "isDistributiveLattice": x5,
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
exports["IsBoundedLattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "isLattice": x0,
          "maximum": x1,
          "minimum": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["BoundedLattice"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return {
                    "Carrier": x0,
                    "_∧_": x4,
                    "_∨_": x3,
                    "_≈_": x1,
                    "_≤_": x2,
                    "isBoundedLattice": x7,
                    "record": function (x8) {
                      return x8["record"](x0, x1, x2, x3, x4, x5, x6, x7);
                    },
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
exports["IsHeytingAlgebra"]["record"] = function (x0) {
    return function (x1) {
      return {
        "exponential": x1,
        "isBoundedLattice": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["HeytingAlgebra"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return {
                      "Carrier": x0,
                      "_⇨_": x5,
                      "_∧_": x4,
                      "_∨_": x3,
                      "_≈_": x1,
                      "_≤_": x2,
                      "isHeytingAlgebra": x8,
                      "record": function (x9) {
                        return x9["record"](x0, x1, x2, x3, x4, x5, x6, x7, x8);
                      },
                      "⊤": x6,
                      "⊥": x7
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
exports["IsBooleanAlgebra"]["record"] = function (x0) {
    return {
      "isHeytingAlgebra": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
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
                  return function (x8) {
                    return {
                      "Carrier": x0,
                      "_∧_": x4,
                      "_∨_": x3,
                      "_≈_": x1,
                      "_≤_": x2,
                      "isBooleanAlgebra": x8,
                      "record": function (x9) {
                        return x9["record"](x0, x1, x2, x3, x4, x5, x6, x7, x8);
                      },
                      "¬_": x5,
                      "⊤": x6,
                      "⊥": x7
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
exports["Supremum"] = agdaRTS.primIntegerFromString("0");
exports["Infimum"] = agdaRTS.primIntegerFromString("0");
exports["Exponential"] = agdaRTS.primIntegerFromString("0");
exports["JoinSemilattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["JoinSemilattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["JoinSemilattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedJoinSemilattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["BoundedJoinSemilattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedJoinSemilattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["MeetSemilattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["MeetSemilattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["MeetSemilattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedMeetSemilattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["BoundedMeetSemilattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedMeetSemilattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["Lattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["Lattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["Lattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["DistributiveLattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["DistributiveLattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["DistributiveLattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedLattice"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["BoundedLattice"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BoundedLattice"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["HeytingAlgebra"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["HeytingAlgebra"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["HeytingAlgebra"]["_≤_"] = agdaRTS.primIntegerFromString("0");
exports["BooleanAlgebra"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["BooleanAlgebra"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["BooleanAlgebra"]["_≤_"] = agdaRTS.primIntegerFromString("0");

