var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");
var z_jAgda_Relation_Nullary_Decidable_Core = require("jAgda.Relation.Nullary.Decidable.Core");

exports["_IsRelatedTo_"] = {};
exports["IsStrict"] = {};
exports["IsEquality"] = {};
exports["_IsRelatedTo_"]["strict"] = function (x0) {
    return function (x1) {
      return x1["strict"](x0);
    };
  };
exports["_IsRelatedTo_"]["nonstrict"] = function (x0) {
    return function (x1) {
      return x1["nonstrict"](x0);
    };
  };
exports["_IsRelatedTo_"]["equals"] = function (x0) {
    return function (x1) {
      return x1["equals"](x0);
    };
  };
exports["IsStrict"]["isStrict"] = function (x0) {
    return function (x1) {
      return x1["isStrict"](x0);
    };
  };
exports["IsStrict?"] = function (x0) {
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
                                    return x16({
                                      "equals": function (x17) {
                                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
                                      },
                                      "nonstrict": function (x17) {
                                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
                                      },
                                      "strict": function (x17) {
                                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](exports["IsStrict"]["isStrict"](agdaRTS.primIntegerFromString("0"))));
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
    };
  };
exports["extractStrict"] = function (x0) {
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
                                      return (agdaRTS.primSeq)(x17, x16({
                                        "strict": function (x18) {
                                          return x18;
                                        }
                                      }));
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsEquality"]["isEquality"] = function (x0) {
    return function (x1) {
      return x1["isEquality"](x0);
    };
  };
exports["IsEquality?"] = function (x0) {
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
                                    return x16({
                                      "equals": function (x17) {
                                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](exports["IsEquality"]["isEquality"](agdaRTS.primIntegerFromString("0"))));
                                      },
                                      "nonstrict": function (x17) {
                                        return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
                                      },
                                      "strict": function (x17) {
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
                };
              };
            };
          };
        };
      };
    };
  };
exports["extractEquality"] = function (x0) {
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
                                      return (agdaRTS.primSeq)(x17, x16({
                                        "equals": function (x18) {
                                          return x18;
                                        }
                                      }));
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["begin_"] = function (x0) {
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
                                    return x16({
                                      "equals": function (x17) {
                                        return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](x8)(x14)(x15)(x17);
                                      },
                                      "nonstrict": function (x17) {
                                        return x17;
                                      },
                                      "strict": function (x17) {
                                        return x11(x14)(x15)(x17);
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
    };
  };
exports["begin-strict_"] = function (x0) {
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
                                      return exports["extractStrict"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x16)(z_jAgda_Relation_Nullary_Decidable_Core["toWitness"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsStrict?"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x16))(agdaRTS.primIntegerFromString("0")));
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["begin-equality_"] = function (x0) {
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
                                      return exports["extractEquality"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x16)(z_jAgda_Relation_Nullary_Decidable_Core["toWitness"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsEquality?"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x16))(agdaRTS.primIntegerFromString("0")));
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_<⟨_⟩_"] = function (x0) {
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
                                        return x18({
                                          "equals": function (x19) {
                                            return exports["_IsRelatedTo_"]["strict"](z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](x10)(x14)(x15)(x16)(x19)(x17));
                                          },
                                          "nonstrict": function (x19) {
                                            return exports["_IsRelatedTo_"]["strict"](x12(x14)(x15)(x16)(x17)(x19));
                                          },
                                          "strict": function (x19) {
                                            return exports["_IsRelatedTo_"]["strict"](x9(x14)(x15)(x16)(x17)(x19));
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
        };
      };
    };
  };
exports["_≤⟨_⟩_"] = function (x0) {
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
                                        return x18({
                                          "equals": function (x19) {
                                            return exports["_IsRelatedTo_"]["nonstrict"](z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x14)(x15)(x16)(x19)(x17));
                                          },
                                          "nonstrict": function (x19) {
                                            return exports["_IsRelatedTo_"]["nonstrict"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](x8)(x14)(x15)(x16)(x17)(x19));
                                          },
                                          "strict": function (x19) {
                                            return exports["_IsRelatedTo_"]["strict"](x13(x14)(x15)(x16)(x17)(x19));
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
        };
      };
    };
  };
exports["_≈⟨_⟩_"] = function (x0) {
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
                                        return x18({
                                          "equals": function (x19) {
                                            return exports["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["trans"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](x8))(x14)(x15)(x16)(x17)(x19));
                                          },
                                          "nonstrict": function (x19) {
                                            return exports["_IsRelatedTo_"]["nonstrict"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["∼-resp-≈"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8))(x16)(x15)(x14)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](x8))(x14)(x15)(x17))(x19));
                                          },
                                          "strict": function (x19) {
                                            return exports["_IsRelatedTo_"]["strict"](z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](x10)(x16)(x15)(x14)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](x8))(x14)(x15)(x17))(x19));
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
        };
      };
    };
  };
exports["_≈˘⟨_⟩_"] = function (x0) {
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
                                        return exports["_≈⟨_⟩_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8)(agdaRTS.primIntegerFromString("0"))(x10)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x14)(x15)(x16)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](x8))(x15)(x14)(x17))(x18);
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_≡⟨_⟩_"] = function (x0) {
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
                                        return x18;
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_≡˘⟨_⟩_"] = function (x0) {
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
                                        return x18;
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_≡⟨⟩_"] = function (x0) {
    return x0;
  };
exports["_∎"] = function (x0) {
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
                                return exports["_IsRelatedTo_"]["equals"](z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](x8))(x14));
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");
exports[".absurdlambda"] = agdaRTS.primIntegerFromString("0");

