var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Category_Monad_Indexed = require("jAgda.Category.Monad.Indexed");
var z_jAgda_Data_Bool_Base = require("jAgda.Data.Bool.Base");
var z_jAgda_Data_Empty = require("jAgda.Data.Empty");
var z_jAgda_Data_Product = require("jAgda.Data.Product");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");
var z_jAgda_Relation_Nullary_Decidable_Core = require("jAgda.Relation.Nullary.Decidable.Core");

exports["contradiction"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Data_Empty["⊥-elim"](x2)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["¬-reflects"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3({
            "ofʸ": function (x4) {
              return z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0"));
            },
            "ofⁿ": function (x4) {
              return z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](agdaRTS.primIntegerFromString("0"));
            }
          });
        };
      };
    };
  };
exports["¬?"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Data_Bool_Base["not"](z_jAgda_Relation_Nullary["Dec"]["does"](x2)))(exports["¬-reflects"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Nullary["Dec"]["proof"](x2)));
      };
    };
  };
exports["decidable-stable"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2["_because_"]({
            "_because_": function (x4, x5) {
              return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x4, {
                "false": function () {
                  return (agdaRTS.primSeq)(x5, z_jAgda_Data_Empty["⊥-elim"](x0)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0")));
                },
                "true": function () {
                  return x5({
                    "ofʸ": function (x6) {
                      return x6;
                    }
                  });
                }
              });
            }
          });
        };
      };
    };
  };
exports["¬-drop-Dec"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Relation_Nullary_Decidable_Core["map′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x3) {
          return function (x4) {
            return x3(function (x5) {
              return x5(x4);
            });
          };
        })(agdaRTS.primIntegerFromString("0"))(exports["¬?"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["¬¬-Monad"] = function (x0) {
    return z_jAgda_Category_Monad_Indexed["RawIMonad"]["record"](function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
          };
        };
      };
    })(function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                  };
                };
              };
            };
          };
        };
      };
    });
  };
exports["_NameId 196 14375210147413033485"] = {};
exports["_NameId 196 14375210147413033485"]["helper"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x8["_because_"]({
                      "_because_": function (x9, x10) {
                        return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x9, {
                          "false": function () {
                            return (agdaRTS.primSeq)(x10, z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x6)(function (x11) {
                              return z_jAgda_Data_Empty["⊥-elim"](x2)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                            }));
                          },
                          "true": function () {
                            return x10({
                              "ofʸ": function (x11) {
                                return z_jAgda_Data_Product["map"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x12) {
                                  return x12;
                                })(function (x12) {
                                  return function (x13) {
                                    return function (x14) {
                                      return x13;
                                    };
                                  };
                                })(x7(x11));
                              }
                            });
                          }
                        });
                      }
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
exports["_NameId 212 14375210147413033485"] = {};
exports["_NameId 212 14375210147413033485"]["helper"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x7["_because_"]({
                    "_because_": function (x8, x9) {
                      return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x8, {
                        "false": function () {
                          return (agdaRTS.primSeq)(x9, z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](function (x10) {
                            return z_jAgda_Data_Empty["⊥-elim"](x2)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                          }));
                        },
                        "true": function () {
                          return x9({
                            "ofʸ": function (x10) {
                              return z_jAgda_Data_Sum_Base["map"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
                                return function (x12) {
                                  return x11;
                                };
                              })(function (x11) {
                                return function (x12) {
                                  return x11;
                                };
                              })(x6(x10));
                            }
                          });
                        }
                      });
                    }
                  });
                };
              };
            };
          };
        };
      };
    };
  };
exports["contraposition"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 14375210147413033485"] = {};
exports["_NameId 60 14375210147413033485"]["∃⟶¬∀¬"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 14375210147413033485"]["∀⟶¬∃¬"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 14375210147413033485"]["¬∃⟶∀¬"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 14375210147413033485"]["∀¬⟶¬∃"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 14375210147413033485"]["∃¬⟶¬∀"] = agdaRTS.primIntegerFromString("0");
exports["¬¬-map"] = agdaRTS.primIntegerFromString("0");
exports["Stable"] = agdaRTS.primIntegerFromString("0");
exports["stable"] = agdaRTS.primIntegerFromString("0");
exports["negated-stable"] = agdaRTS.primIntegerFromString("0");
exports["¬¬-push"] = agdaRTS.primIntegerFromString("0");
exports["excluded-middle"] = agdaRTS.primIntegerFromString("0");
exports["call/cc"] = agdaRTS.primIntegerFromString("0");
exports["independence-of-premise"] = agdaRTS.primIntegerFromString("0");
exports["independence-of-premise-⊎"] = agdaRTS.primIntegerFromString("0");
exports["Excluded-Middle"] = agdaRTS.primIntegerFromString("0");
exports["Double-Negation-Elimination"] = agdaRTS.primIntegerFromString("0");

