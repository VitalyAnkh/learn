var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Relation_Binary_Consequences = require("jAgda.Relation.Binary.Consequences");

exports["IsPartialEquivalence"] = {};
exports["IsPartialEquivalence"]["record"] = function (x0) {
    return function (x1) {
      return {
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "sym": x0,
        "trans": x1
      };
    };
  };
exports["IsPartialEquivalence"]["sym"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsPartialEquivalence"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsEquivalence"] = {};
exports["IsEquivalence"]["refl"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsEquivalence"]["sym"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsEquivalence"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsEquivalence"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsEquivalence"]["refl"](x4)(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsEquivalence"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["IsPartialEquivalence"]["record"](exports["IsEquivalence"]["sym"](x4))(exports["IsEquivalence"]["trans"](x4));
          };
        };
      };
    };
  };
exports["IsDecEquivalence"] = {};
exports["IsDecEquivalence"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsDecEquivalence"]["_≟_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsDecEquivalence"]["_NameId 54 1969076776312232382"] = {};
exports["IsDecEquivalence"]["_NameId 54 1969076776312232382"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](x4));
          };
        };
      };
    };
  };
exports["IsDecEquivalence"]["_NameId 54 1969076776312232382"]["refl"] = function (x0) {
    return exports["IsEquivalence"]["refl"](exports["IsDecEquivalence"]["isEquivalence"](x0));
  };
exports["IsDecEquivalence"]["_NameId 54 1969076776312232382"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](x4));
          };
        };
      };
    };
  };
exports["IsDecEquivalence"]["_NameId 54 1969076776312232382"]["sym"] = function (x0) {
    return exports["IsEquivalence"]["sym"](exports["IsDecEquivalence"]["isEquivalence"](x0));
  };
exports["IsDecEquivalence"]["_NameId 54 1969076776312232382"]["trans"] = function (x0) {
    return exports["IsEquivalence"]["trans"](exports["IsDecEquivalence"]["isEquivalence"](x0));
  };
exports["IsPreorder"] = {};
exports["IsPreorder"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsPreorder"]["reflexive"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsPreorder"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsPreorder"]["Eq"] = {};
exports["IsPreorder"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPreorder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPreorder"]["Eq"]["refl"] = function (x0) {
    return exports["IsEquivalence"]["refl"](exports["IsPreorder"]["isEquivalence"](x0));
  };
exports["IsPreorder"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPreorder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPreorder"]["Eq"]["sym"] = function (x0) {
    return exports["IsEquivalence"]["sym"](exports["IsPreorder"]["isEquivalence"](x0));
  };
exports["IsPreorder"]["Eq"]["trans"] = function (x0) {
    return exports["IsEquivalence"]["trans"](exports["IsPreorder"]["isEquivalence"](x0));
  };
exports["IsEquivalence"]["record"] = function (x0) {
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
exports["IsPreorder"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["IsPreorder"]["reflexive"](x6)(x7)(x7)(exports["IsEquivalence"]["refl"](exports["IsPreorder"]["isEquivalence"](x6))(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsPreorder"]["∼-respˡ-≈"] = function (x0) {
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
                          return exports["IsPreorder"]["trans"](x6)(x9)(x8)(x7)(exports["IsPreorder"]["reflexive"](x6)(x9)(x8)(exports["IsEquivalence"]["sym"](exports["IsPreorder"]["isEquivalence"](x6))(x8)(x9)(x10)))(x11);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsPreorder"]["∼-respʳ-≈"] = function (x0) {
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
                          return exports["IsPreorder"]["trans"](x6)(x7)(x8)(x9)(x11)(exports["IsPreorder"]["reflexive"](x6)(x8)(x9)(x10));
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsPreorder"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6))(exports["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"] = {};
exports["IsPartialOrder"]["isPreorder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsPartialOrder"]["antisym"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"] = {};
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["isEquivalence"] = function (x0) {
    return exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](x0));
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["reflexive"] = function (x0) {
    return exports["IsPreorder"]["reflexive"](exports["IsPartialOrder"]["isPreorder"](x0));
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["trans"] = function (x0) {
    return exports["IsPreorder"]["trans"](exports["IsPartialOrder"]["isPreorder"](x0));
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["Eq"] = {};
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["Eq"]["refl"] = function (x0) {
    return exports["IsEquivalence"]["refl"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](x0)));
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["Eq"]["sym"] = function (x0) {
    return exports["IsEquivalence"]["sym"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](x0)));
  };
exports["IsPartialOrder"]["_NameId 130 1969076776312232382"]["Eq"]["trans"] = function (x0) {
    return exports["IsEquivalence"]["trans"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](x0)));
  };
exports["IsDecPartialOrder"] = {};
exports["IsDecPartialOrder"]["isPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsDecPartialOrder"]["_≟_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsDecPartialOrder"]["_≤?_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"] = {};
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["antisym"] = function (x0) {
    return exports["IsPartialOrder"]["antisym"](exports["IsDecPartialOrder"]["isPartialOrder"](x0));
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["isEquivalence"] = function (x0) {
    return exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x0)));
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["isPreorder"] = function (x0) {
    return exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x0));
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["reflexive"] = function (x0) {
    return exports["IsPreorder"]["reflexive"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x0)));
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["trans"] = function (x0) {
    return exports["IsPreorder"]["trans"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x0)));
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["_NameId 178 1969076776312232382"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"] = {};
exports["IsDecPartialOrder"]["Eq"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecEquivalence"]["record"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6))))(exports["IsDecPartialOrder"]["_≟_"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"] = {};
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecPartialOrder"]["_≟_"](x6);
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsDecPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["refl"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsDecPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["sym"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecPartialOrder"]["Eq"]["_NameId 202 1969076776312232382"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["trans"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsDecPartialOrder"]["isPartialOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictPartialOrder"] = {};
exports["IsStrictPartialOrder"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x1;
      }
    });
  };
exports["IsStrictPartialOrder"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x3;
      }
    });
  };
exports["IsStrictPartialOrder"]["<-resp-≈"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3, x4) {
        return x4;
      }
    });
  };
exports["IsStrictPartialOrder"]["Eq"] = {};
exports["IsStrictPartialOrder"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictPartialOrder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictPartialOrder"]["Eq"]["refl"] = function (x0) {
    return exports["IsEquivalence"]["refl"](exports["IsStrictPartialOrder"]["isEquivalence"](x0));
  };
exports["IsStrictPartialOrder"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictPartialOrder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictPartialOrder"]["Eq"]["sym"] = function (x0) {
    return exports["IsEquivalence"]["sym"](exports["IsStrictPartialOrder"]["isEquivalence"](x0));
  };
exports["IsStrictPartialOrder"]["Eq"]["trans"] = function (x0) {
    return exports["IsEquivalence"]["trans"](exports["IsStrictPartialOrder"]["isEquivalence"](x0));
  };
exports["IsStrictPartialOrder"]["<-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsStrictPartialOrder"]["<-resp-≈"](x6))(x7)(x8)(x9);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictPartialOrder"]["<-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsStrictPartialOrder"]["<-resp-≈"](x6))(x7)(x8)(x9);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"] = {};
exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsDecStrictPartialOrder"]["_≟_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsDecStrictPartialOrder"]["_<?_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsDecStrictPartialOrder"]["SPO"] = {};
exports["IsDecStrictPartialOrder"]["SPO"]["<-resp-≈"] = function (x0) {
    return exports["IsStrictPartialOrder"]["<-resp-≈"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x0));
  };
exports["IsDecStrictPartialOrder"]["SPO"]["<-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsStrictPartialOrder"]["<-resp-≈"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)))(x7)(x8)(x9);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["SPO"]["<-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsStrictPartialOrder"]["<-resp-≈"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)))(x7)(x8)(x9);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["SPO"]["isEquivalence"] = function (x0) {
    return exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x0));
  };
exports["IsDecStrictPartialOrder"]["SPO"]["trans"] = function (x0) {
    return exports["IsStrictPartialOrder"]["trans"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x0));
  };
exports["IsDecStrictPartialOrder"]["SPO"]["Eq"] = {};
exports["IsDecStrictPartialOrder"]["SPO"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["SPO"]["Eq"]["refl"] = function (x0) {
    return exports["IsEquivalence"]["refl"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x0)));
  };
exports["IsDecStrictPartialOrder"]["SPO"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["SPO"]["Eq"]["sym"] = function (x0) {
    return exports["IsEquivalence"]["sym"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x0)));
  };
exports["IsDecStrictPartialOrder"]["SPO"]["Eq"]["trans"] = function (x0) {
    return exports["IsEquivalence"]["trans"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x0)));
  };
exports["IsDecStrictPartialOrder"]["Eq"] = {};
exports["IsDecStrictPartialOrder"]["Eq"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecEquivalence"]["record"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)))(exports["IsDecStrictPartialOrder"]["_≟_"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"] = {};
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecStrictPartialOrder"]["_≟_"](x6);
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["refl"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["sym"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["Eq"]["_NameId 320 1969076776312232382"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["trans"](exports["IsStrictPartialOrder"]["isEquivalence"](exports["IsDecStrictPartialOrder"]["isStrictPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"] = {};
exports["IsTotalOrder"]["isPartialOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsTotalOrder"]["total"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"] = {};
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["antisym"] = function (x0) {
    return exports["IsPartialOrder"]["antisym"](exports["IsTotalOrder"]["isPartialOrder"](x0));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["isEquivalence"] = function (x0) {
    return exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0)));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["isPreorder"] = function (x0) {
    return exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["reflexive"] = function (x0) {
    return exports["IsPreorder"]["reflexive"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0)));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["trans"] = function (x0) {
    return exports["IsPreorder"]["trans"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0)));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["Eq"] = {};
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["Eq"]["refl"] = function (x0) {
    return exports["IsEquivalence"]["refl"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0))));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["Eq"]["sym"] = function (x0) {
    return exports["IsEquivalence"]["sym"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0))));
  };
exports["IsTotalOrder"]["_NameId 352 1969076776312232382"]["Eq"]["trans"] = function (x0) {
    return exports["IsEquivalence"]["trans"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](x0))));
  };
exports["IsDecTotalOrder"] = {};
exports["IsDecTotalOrder"]["isTotalOrder"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsDecTotalOrder"]["_≟_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsDecTotalOrder"]["_≤?_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"] = {};
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["antisym"] = function (x0) {
    return exports["IsPartialOrder"]["antisym"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x0)));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["isEquivalence"] = function (x0) {
    return exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x0))));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["isPartialOrder"] = function (x0) {
    return exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x0));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["isPreorder"] = function (x0) {
    return exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x0)));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["reflexive"] = function (x0) {
    return exports["IsPreorder"]["reflexive"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x0))));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["total"] = function (x0) {
    return exports["IsTotalOrder"]["total"](exports["IsDecTotalOrder"]["isTotalOrder"](x0));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["trans"] = function (x0) {
    return exports["IsPreorder"]["trans"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x0))));
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["∼-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["∼-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["_NameId 404 1969076776312232382"]["∼-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["∼-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"] = {};
exports["IsDecTotalOrder"]["Eq"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecEquivalence"]["record"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6)))))(exports["IsDecTotalOrder"]["_≟_"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"] = {};
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecTotalOrder"]["_≟_"](x6);
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsDecTotalOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["refl"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsDecTotalOrder"]["Eq"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["sym"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsDecTotalOrder"]["Eq"]["_NameId 432 1969076776312232382"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["trans"](exports["IsPreorder"]["isEquivalence"](exports["IsPartialOrder"]["isPreorder"](exports["IsTotalOrder"]["isPartialOrder"](exports["IsDecTotalOrder"]["isTotalOrder"](x6)))));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"] = {};
exports["IsStrictTotalOrder"]["isEquivalence"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsStrictTotalOrder"]["trans"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsStrictTotalOrder"]["compare"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsStrictTotalOrder"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Consequences["_NameId 200 6863766767261122522"]["tri⟶dec≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictTotalOrder"]["compare"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["_<?_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Consequences["_NameId 200 6863766767261122522"]["tri⟶dec<"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictTotalOrder"]["compare"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["isDecEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecEquivalence"]["record"](exports["IsStrictTotalOrder"]["isEquivalence"](x6))(exports["IsStrictTotalOrder"]["_≟_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"] = {};
exports["IsStrictTotalOrder"]["Eq"]["_≟_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsStrictTotalOrder"]["_≟_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"]["isEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsStrictTotalOrder"]["isEquivalence"](x6);
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"]["isPartialEquivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["isPartialEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsStrictTotalOrder"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["refl"](exports["IsStrictTotalOrder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["reflexive"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsDecEquivalence"]["isEquivalence"](exports["IsStrictTotalOrder"]["isDecEquivalence"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"]["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["sym"](exports["IsStrictTotalOrder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["Eq"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsEquivalence"]["trans"](exports["IsStrictTotalOrder"]["isEquivalence"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["isStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsStrictPartialOrder"]["record"](exports["IsStrictTotalOrder"]["isEquivalence"](x6))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictTotalOrder"]["trans"](x6))(z_jAgda_Relation_Binary_Consequences["_NameId 200 6863766767261122522"]["trans∧tri⟶resp≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictTotalOrder"]["compare"](x6)));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["isDecStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["IsDecStrictPartialOrder"]["record"](exports["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(agdaRTS.primIntegerFromString("0"))(x6))(exports["IsStrictTotalOrder"]["_≟_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6))(exports["IsStrictTotalOrder"]["_<?_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["_NameId 494 1969076776312232382"] = {};
exports["IsStrictTotalOrder"]["_NameId 494 1969076776312232382"]["<-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Consequences["_NameId 200 6863766767261122522"]["trans∧tri⟶resp≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrictTotalOrder"]["compare"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["_NameId 494 1969076776312232382"]["<-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](exports["IsStrictPartialOrder"]["<-resp-≈"](exports["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(agdaRTS.primIntegerFromString("0"))(x6)))(x7)(x8)(x9);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["_NameId 494 1969076776312232382"]["<-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](exports["IsStrictPartialOrder"]["<-resp-≈"](exports["IsStrictTotalOrder"]["isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(agdaRTS.primIntegerFromString("0"))(x6)))(x7)(x8)(x9);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsDecEquivalence"]["record"] = function (x0) {
    return function (x1) {
      return {
        "_≟_": x1,
        "isEquivalence": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsPreorder"]["record"] = function (x0) {
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
exports["IsPartialOrder"]["record"] = function (x0) {
    return function (x1) {
      return {
        "antisym": x1,
        "isPreorder": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsDecPartialOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "_≟_": x1,
          "_≤?_": x2,
          "isPartialOrder": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsStrictPartialOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return {
            "<-resp-≈": x3,
            "irrefl": x1,
            "isEquivalence": x0,
            "record": function (x4) {
              return x4["record"](x0, x1, x2, x3);
            },
            "trans": x2
          };
        };
      };
    };
  };
exports["IsDecStrictPartialOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "_<?_": x2,
          "_≟_": x1,
          "isStrictPartialOrder": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsTotalOrder"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isPartialOrder": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "total": x1
      };
    };
  };
exports["IsDecTotalOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "_≟_": x1,
          "_≤?_": x2,
          "isTotalOrder": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsStrictTotalOrder"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "compare": x2,
          "isEquivalence": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          },
          "trans": x1
        };
      };
    };
  };
exports["IsStrictPartialOrder"]["irrefl"] = agdaRTS.primIntegerFromString("0");
exports["IsStrictPartialOrder"]["asym"] = agdaRTS.primIntegerFromString("0");
exports["IsStrictPartialOrder"]["asymmetric"] = agdaRTS.primIntegerFromString("0");
exports["IsDecStrictPartialOrder"]["SPO"]["asym"] = agdaRTS.primIntegerFromString("0");
exports["IsDecStrictPartialOrder"]["SPO"]["asymmetric"] = agdaRTS.primIntegerFromString("0");
exports["IsDecStrictPartialOrder"]["SPO"]["irrefl"] = agdaRTS.primIntegerFromString("0");
exports["IsStrictTotalOrder"]["_NameId 494 1969076776312232382"]["asym"] = agdaRTS.primIntegerFromString("0");
exports["IsStrictTotalOrder"]["_NameId 494 1969076776312232382"]["irrefl"] = agdaRTS.primIntegerFromString("0");

