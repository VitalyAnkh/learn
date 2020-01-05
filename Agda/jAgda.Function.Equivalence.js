var agdaRTS = require("agda-rts");
var z_jAgda_Function_Equality = require("jAgda.Function.Equality");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_PropositionalEquality = require("jAgda.Relation.Binary.PropositionalEquality");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["Equivalence"] = {};
exports["Equivalence"]["record"] = function (x0) {
    return function (x1) {
      return {
        "from": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "to": x0
      };
    };
  };
exports["Equivalence"]["to"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["Equivalence"]["from"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["equivalence"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["Equivalence"]["record"](z_jAgda_Relation_Binary_PropositionalEquality["→-to-⟶"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x6) {
                return agdaRTS.primIntegerFromString("0");
              })(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))))(x4))(z_jAgda_Relation_Binary_PropositionalEquality["→-to-⟶"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x6) {
                return agdaRTS.primIntegerFromString("0");
              })(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))))(x5));
            };
          };
        };
      };
    };
  };
exports["id"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Equivalence"]["record"](z_jAgda_Function_Equality["id"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(z_jAgda_Function_Equality["id"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
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
                        return exports["Equivalence"]["record"](z_jAgda_Function_Equality["_∘_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Equivalence"]["to"](x9))(exports["Equivalence"]["to"](x10)))(z_jAgda_Function_Equality["_∘_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["Equivalence"]["from"](x10))(exports["Equivalence"]["from"](x9)));
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["sym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["Equivalence"]["record"](exports["Equivalence"]["from"](x6))(exports["Equivalence"]["to"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 106 4764974859425314287"] = {};
exports["_NameId 106 4764974859425314287"]["_NameId 108 4764974859425314287"] = {};
exports["_NameId 106 4764974859425314287"]["_NameId 108 4764974859425314287"]["from"] = function (x0) {
    return exports["Equivalence"]["from"](x0);
  };
exports["_NameId 106 4764974859425314287"]["_NameId 108 4764974859425314287"]["to"] = function (x0) {
    return exports["Equivalence"]["to"](x0);
  };
exports["setoid"] = function (x0) {
    return function (x1) {
      return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](exports["id"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(exports["sym"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")))(function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["_∘_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x5);
              };
            };
          };
        };
      }));
    };
  };
exports["⇔-setoid"] = function (x0) {
    return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x1) {
      return exports["id"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
    })(function (x1) {
      return function (x2) {
        return exports["sym"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
      };
    })(function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["_∘_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x4);
            };
          };
        };
      };
    }));
  };
exports["map"] = function (x0) {
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
                                return exports["Equivalence"]["record"](x12(exports["Equivalence"]["to"](x14)))(x13(exports["Equivalence"]["from"](x14)));
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 164 4764974859425314287"] = {};
exports["_NameId 164 4764974859425314287"]["_NameId 166 4764974859425314287"] = {};
exports["_NameId 164 4764974859425314287"]["_NameId 166 4764974859425314287"]["from"] = function (x0) {
    return exports["Equivalence"]["from"](x0);
  };
exports["_NameId 164 4764974859425314287"]["_NameId 166 4764974859425314287"]["to"] = function (x0) {
    return exports["Equivalence"]["to"](x0);
  };
exports["zip"] = function (x0) {
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
                                return function (x15) {
                                  return function (x16) {
                                    return function (x17) {
                                      return function (x18) {
                                        return function (x19) {
                                          return function (x20) {
                                            return function (x21) {
                                              return exports["Equivalence"]["record"](x18(exports["Equivalence"]["to"](x20))(exports["Equivalence"]["to"](x21)))(x19(exports["Equivalence"]["from"](x20))(exports["Equivalence"]["from"](x21)));
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_⇔_"] = agdaRTS.primIntegerFromString("0");

