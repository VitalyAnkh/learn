var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Data_Empty = require("jAgda.Data.Empty");
var z_jAgda_Relation_Binary_Definitions = require("jAgda.Relation.Binary.Definitions");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");
var z_jAgda_Relation_Nullary_Negation = require("jAgda.Relation.Nullary.Negation");
var z_jAgda_Relation_Nullary_Product = require("jAgda.Relation.Nullary.Product");

exports["<⇒≤"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"];
                };
              };
            };
          };
        };
      };
    };
  };
exports["≤∧≉⇒<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"];
                };
              };
            };
          };
        };
      };
    };
  };
exports["≰⇒>"] = function (x0) {
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
                          return x8(x9)(x10)({
                            "inj₁": function (x12) {
                              return z_jAgda_Data_Empty["⊥-elim"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                            },
                            "inj₂": function (x12) {
                              return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x12)(function (x13) {
                                return x11(x7(x9)(x10)(x6(x10)(x9)(x13)));
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
exports["≮⇒≥"] = function (x0) {
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
                            return x7(x10)(x11)["_because_"]({
                              "_because_": function (x13, x14) {
                                return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x13, {
                                  "false": function () {
                                    return x9(x11)(x10)({
                                      "inj₁": function (x15) {
                                        return x15;
                                      },
                                      "inj₂": function (x15) {
                                        return x14({
                                          "ofʸ": function (x16) {
                                            return x9(x11)(x10)({
                                              "inj₁": function (x17) {
                                                return x17;
                                              }
                                            });
                                          },
                                          "ofⁿ": function (x16) {
                                            return z_jAgda_Data_Empty["⊥-elim"](x2)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                                          }
                                        });
                                      }
                                    });
                                  },
                                  "true": function () {
                                    return x14({
                                      "ofʸ": function (x15) {
                                        return x8(x11)(x10)(x6(x10)(x11)(x15));
                                      },
                                      "ofⁿ": function (x15) {
                                        return x9(x11)(x10)({
                                          "inj₁": function (x16) {
                                            return x16;
                                          }
                                        });
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
        };
      };
    };
  };
exports["<-trans"] = function (x0) {
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
                          return x10["_,_"]({
                            "_,_": function (x12, x13) {
                              return x11["_,_"]({
                                "_,_": function (x14, x15) {
                                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6))(x7)(x8)(x9)(x12)(x14))(function (x16) {
                                    return x13(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](x6)(x7)(x8)(x12)(z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6))(x8)(x9)(x7)(x14)(z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6))(x9)(x7)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6)))(x7)(x9)(x16)))));
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
      };
    };
  };
exports["<-≤-trans"] = function (x0) {
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
                                return x13["_,_"]({
                                  "_,_": function (x15, x16) {
                                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x7(x10)(x11)(x12)(x15)(x14))(function (x17) {
                                      return x16(x8(x10)(x11)(x15)(x9(x11)(x12)(x10)(x6(x10)(x12)(x17))(x14)));
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
      };
    };
  };
exports["≤-<-trans"] = function (x0) {
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
                              return x13["_,_"]({
                                "_,_": function (x14, x15) {
                                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x6(x9)(x10)(x11)(x12)(x14))(function (x16) {
                                    return x15(x7(x10)(x11)(x14)(x8(x10)(x9)(x11)(x16)(x12)));
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
    };
  };
exports["<-respˡ-≈"] = function (x0) {
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
                            return x12["_,_"]({
                              "_,_": function (x13, x14) {
                                return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x7(x8)(x9)(x10)(x11)(x13))(function (x15) {
                                  return x14(x6(x9)(x10)(x8)(x11)(x15));
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
  };
exports["<-respʳ-≈"] = function (x0) {
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
                              return x13["_,_"]({
                                "_,_": function (x14, x15) {
                                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x8(x9)(x10)(x11)(x12)(x14))(function (x16) {
                                    return x15(x7(x9)(x11)(x10)(x16)(x6(x10)(x11)(x12)));
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
    };
  };
exports["<-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x7["_,_"]({
                    "_,_": function (x8, x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["<-respʳ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](x6))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](x6))(x8))(exports["<-respˡ-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](x6))(x9));
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
exports["<-trichotomous"] = function (x0) {
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
                          return x7(x10)(x11)["_because_"]({
                            "_because_": function (x12, x13) {
                              return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x12, {
                                "false": function () {
                                  return (agdaRTS.primSeq)(x13, x9(x10)(x11)({
                                    "inj₁": function (x14) {
                                      return z_jAgda_Relation_Binary_Definitions["Tri"]["tri<"](z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x14)(agdaRTS.primIntegerFromString("0")))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
                                    },
                                    "inj₂": function (x14) {
                                      return z_jAgda_Relation_Binary_Definitions["Tri"]["tri>"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x14)(function (x15) {
                                        return agdaRTS.primIntegerFromString("0");
                                      }));
                                    }
                                  }));
                                },
                                "true": function () {
                                  return x13({
                                    "ofʸ": function (x14) {
                                      return z_jAgda_Relation_Binary_Definitions["Tri"]["tri≈"](agdaRTS.primIntegerFromString("0"))(x14)(agdaRTS.primIntegerFromString("0"));
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
      };
    };
  };
exports["<-decidable"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Relation_Nullary_Product["_×-dec_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7(x8)(x9))(z_jAgda_Relation_Nullary_Negation["¬?"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6(x8)(x9)));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["<-isStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["record"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6)))(agdaRTS.primIntegerFromString("0"))(exports["<-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6))(exports["<-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6)))(z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](x6))));
              };
            };
          };
        };
      };
    };
  };
exports["<-isStrictTotalOrder₁"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsStrictTotalOrder"]["record"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](x7))))(exports["<-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["isPartialOrder"](x7)))(exports["<-trichotomous"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsTotalOrder"]["total"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["<-isStrictTotalOrder₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["<-isStrictTotalOrder₁"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["_≟_"](x6))(z_jAgda_Relation_Binary_Structures["IsDecTotalOrder"]["isTotalOrder"](x6));
              };
            };
          };
        };
      };
    };
  };
exports["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["<-trans"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["decidable"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["<-decidable"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["trichotomous"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["<-trichotomous"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["isPartialOrder⟶isStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["<-isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["isTotalOrder⟶isStrictTotalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["<-isStrictTotalOrder₁"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["isDecTotalOrder⟶isStrictTotalOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["<-isStrictTotalOrder₂"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["_<_"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≉"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≱"] = agdaRTS.primIntegerFromString("0");
exports["≤⇒≯"] = agdaRTS.primIntegerFromString("0");
exports["<-irrefl"] = agdaRTS.primIntegerFromString("0");
exports["<-asym"] = agdaRTS.primIntegerFromString("0");
exports["irrefl"] = agdaRTS.primIntegerFromString("0");
exports["antisym⟶asym"] = agdaRTS.primIntegerFromString("0");

