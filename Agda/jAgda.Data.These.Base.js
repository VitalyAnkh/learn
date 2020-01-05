var agdaRTS = require("agda-rts");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");

exports["These"] = {};
exports["These"]["this"] = function (x0) {
    return function (x1) {
      return x1["this"](x0);
    };
  };
exports["These"]["that"] = function (x0) {
    return function (x1) {
      return x1["that"](x0);
    };
  };
exports["These"]["these"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["these"](x0, x1);
      };
    };
  };
exports["fromSum"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Data_Sum_Base["[_,_]′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["These"]["this"])(exports["These"]["that"]);
        };
      };
    };
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
                        return x10({
                          "that": function (x11) {
                            return exports["These"]["that"](x9(x11));
                          },
                          "these": function (x11, x12) {
                            return exports["These"]["these"](x8(x11))(x9(x12));
                          },
                          "this": function (x11) {
                            return exports["These"]["this"](x8(x11));
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
exports["map₁"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["map"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(function (x7) {
                  return x7;
                });
              };
            };
          };
        };
      };
    };
  };
exports["map₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["map"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x6) {
                return x6;
              });
            };
          };
        };
      };
    };
  };
exports["fold"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x9({
                        "that": function (x10) {
                          return x7(x10);
                        },
                        "these": function (x10, x11) {
                          return x8(x10)(x11);
                        },
                        "this": function (x10) {
                          return x6(x10);
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
exports["foldWithDefaults"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return exports["fold"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x9) {
                      return x8(x9)(x7);
                    })(x8(x6))(x8);
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["swap"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["fold"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["These"]["that"])(exports["These"]["this"])(function (x4) {
            return function (x5) {
              return exports["These"]["these"](x5)(x4);
            };
          });
        };
      };
    };
  };
exports["alignWith"] = function (x0) {
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
                                  return x14({
                                    "that": function (x16) {
                                      return x15({
                                        "that": function (x17) {
                                          return exports["These"]["that"](x13(exports["These"]["these"](x16)(x17)));
                                        },
                                        "these": function (x17, x18) {
                                          return exports["These"]["these"](x12(exports["These"]["that"](x17)))(x13(exports["These"]["these"](x16)(x18)));
                                        },
                                        "this": function (x17) {
                                          return exports["These"]["these"](x12(exports["These"]["that"](x17)))(x13(exports["These"]["this"](x16)));
                                        }
                                      });
                                    },
                                    "these": function (x16, x17) {
                                      return x15({
                                        "that": function (x18) {
                                          return exports["These"]["these"](x12(exports["These"]["this"](x16)))(x13(exports["These"]["these"](x17)(x18)));
                                        },
                                        "these": function (x18, x19) {
                                          return exports["These"]["these"](x12(exports["These"]["these"](x16)(x18)))(x13(exports["These"]["these"](x17)(x19)));
                                        },
                                        "this": function (x18) {
                                          return exports["These"]["these"](x12(exports["These"]["these"](x16)(x18)))(x13(exports["These"]["this"](x17)));
                                        }
                                      });
                                    },
                                    "this": function (x16) {
                                      return x15({
                                        "that": function (x17) {
                                          return exports["These"]["these"](x12(x14))(x13(x15));
                                        },
                                        "these": function (x17, x18) {
                                          return exports["These"]["these"](x12(exports["These"]["these"](x16)(x17)))(x13(exports["These"]["that"](x18)));
                                        },
                                        "this": function (x17) {
                                          return exports["These"]["this"](x12(exports["These"]["these"](x16)(x17)));
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
      };
    };
  };
exports["align"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["alignWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x8) {
                    return x8;
                  })(function (x8) {
                    return x8;
                  });
                };
              };
            };
          };
        };
      };
    };
  };

