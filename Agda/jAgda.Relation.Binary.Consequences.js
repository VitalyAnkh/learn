var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Data_Empty_Irrelevant = require("jAgda.Data.Empty.Irrelevant");
var z_jAgda_Data_Maybe_Base = require("jAgda.Data.Maybe.Base");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Relation_Binary_Definitions = require("jAgda.Relation.Binary.Definitions");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");
var z_jAgda_Relation_Nullary_Decidable_Core = require("jAgda.Relation.Nullary.Decidable.Core");

exports["_NameId 24 6863766767261122522"] = {};
exports["_NameId 24 6863766767261122522"]["subst⟶respˡ"] = function (x0) {
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
                          return x6(function (x12) {
                            return x5(x12)(x7);
                          })(x8)(x9)(x10)(x11);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 24 6863766767261122522"]["subst⟶respʳ"] = function (x0) {
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
                          return x6(x5(x7))(x8)(x9)(x10)(x11);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 24 6863766767261122522"]["subst⟶resp₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](function (x7) {
                  return x6(x5(x7));
                })(function (x7) {
                  return x6(function (x8) {
                    return x5(x8)(x7);
                  });
                });
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 88 6863766767261122522"] = {};
exports["_NameId 88 6863766767261122522"]["total⟶refl"] = function (x0) {
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
                          return x6["_,_"]({
                            "_,_": function (x12, x13) {
                              return x8(x9)(x10)({
                                "inj₁": function (x14) {
                                  return x14;
                                },
                                "inj₂": function (x14) {
                                  return x12(x9)(x9)(x10)(x11)(x13(x9)(x10)(x9)(x7(x9)(x10)(x11))(x14));
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
      };
    };
  };
exports["_NameId 88 6863766767261122522"]["total+dec⟶dec"] = function (x0) {
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
                          return x8(x10)(x11)({
                            "inj₁": function (x12) {
                              return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](x12));
                            },
                            "inj₂": function (x12) {
                              return z_jAgda_Relation_Nullary_Decidable_Core["map′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6(x10)(x11))(agdaRTS.primIntegerFromString("0"))(x9(x10)(x11));
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
      };
    };
  };
exports["_NameId 200 6863766767261122522"] = {};
exports["_NameId 200 6863766767261122522"]["asym⟶antisym"] = function (x0) {
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
                        return z_jAgda_Data_Empty_Irrelevant["⊥-elim"](x2)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 200 6863766767261122522"]["tri⟶dec≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(x7)(x8)({
                      "tri<": function (x9, x10, x11) {
                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
                      },
                      "tri>": function (x9, x10, x11) {
                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
                      },
                      "tri≈": function (x9, x10, x11) {
                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](x10));
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
exports["_NameId 200 6863766767261122522"]["tri⟶dec<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(x7)(x8)({
                      "tri<": function (x9, x10, x11) {
                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](x9));
                      },
                      "tri>": function (x9, x10, x11) {
                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
                      },
                      "tri≈": function (x9, x10, x11) {
                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
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
exports["_NameId 200 6863766767261122522"]["trans∧tri⟶respʳ≈"] = function (x0) {
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
                                return x9(x10)(x12)({
                                  "tri<": function (x15, x16, x17) {
                                    return x15;
                                  },
                                  "tri>": function (x15, x16, x17) {
                                    return z_jAgda_Data_Empty_Irrelevant["⊥-elim"](x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                                  },
                                  "tri≈": function (x15, x16, x17) {
                                    return z_jAgda_Data_Empty_Irrelevant["⊥-elim"](x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
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
            };
          };
        };
      };
    };
  };
exports["_NameId 200 6863766767261122522"]["trans∧tri⟶respˡ≈"] = function (x0) {
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
                              return x8(x11)(x9)({
                                "tri<": function (x14, x15, x16) {
                                  return x14;
                                },
                                "tri>": function (x14, x15, x16) {
                                  return z_jAgda_Data_Empty_Irrelevant["⊥-elim"](x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                                },
                                "tri≈": function (x14, x15, x16) {
                                  return z_jAgda_Data_Empty_Irrelevant["⊥-elim"](x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
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
          };
        };
      };
    };
  };
exports["_NameId 200 6863766767261122522"]["trans∧tri⟶resp≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["_NameId 200 6863766767261122522"]["trans∧tri⟶respʳ≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9))(exports["_NameId 200 6863766767261122522"]["trans∧tri⟶respˡ≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 608 6863766767261122522"] = {};
exports["_NameId 608 6863766767261122522"]["wlog"] = function (x0) {
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
                        return x6(x9)(x10)({
                          "inj₁": function (x11) {
                            return x8(x9)(x10)(x11);
                          },
                          "inj₂": function (x11) {
                            return x7(x10)(x9)(x8(x10)(x9)(x11));
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
    };
  };
exports["_NameId 670 6863766767261122522"] = {};
exports["_NameId 670 6863766767261122522"]["dec⟶weaklyDec"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Data_Maybe_Base["decToMaybe"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6(x7)(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 690 6863766767261122522"] = {};
exports["_NameId 690 6863766767261122522"]["map-NonEmpty"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Binary_Definitions["NonEmpty"]["nonEmpty"](z_jAgda_Relation_Binary_Definitions["NonEmpty"]["x"](x9))(z_jAgda_Relation_Binary_Definitions["NonEmpty"]["y"](x9))(x8(z_jAgda_Relation_Binary_Definitions["NonEmpty"]["x"](x9))(z_jAgda_Relation_Binary_Definitions["NonEmpty"]["y"](x9))(z_jAgda_Relation_Binary_Definitions["NonEmpty"]["proof"](x9)));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 712 6863766767261122522"] = {};
exports["_NameId 712 6863766767261122522"]["flip-Connex"] = function (x0) {
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
                        return z_jAgda_Data_Sum_Base["swap"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8(x10)(x9));
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 736 6863766767261122522"] = {};
exports["_NameId 736 6863766767261122522"]["dec⟶recomputable"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Nullary["recompute"](x4)(agdaRTS.primIntegerFromString("0"))(x6(x7)(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 62 6863766767261122522"] = {};
exports["_NameId 62 6863766767261122522"]["P-resp⟶¬P-resp"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 200 6863766767261122522"]["trans∧irr⟶asym"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 200 6863766767261122522"]["irr∧antisym⟶asym"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 200 6863766767261122522"]["asym⟶irr"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 200 6863766767261122522"]["tri⟶asym"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 200 6863766767261122522"]["tri⟶irr"] = agdaRTS.primIntegerFromString("0");

