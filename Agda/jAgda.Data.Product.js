var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");

exports["Σ"] = {};
exports["Σ"]["fst"] = function (x0) {
    return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](x0);
  };
exports["Σ"]["snd"] = function (x0) {
    return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](x0);
  };
exports["Σ"]["_,_"] = function (x0) {
    return function (x1) {
      return {
        "_,_": function (x2) {
          return x2["_,_"](x0, x1);
        },
        "fst": x0,
        "snd": x1
      };
    };
  };
exports["_,′_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"];
        };
      };
    };
  };
exports["-,_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x4)(x5);
            };
          };
        };
      };
    };
  };
exports["<_,_>"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x6(x8))(x7(x8));
                  };
                };
              };
            };
          };
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
                        return x10["_,_"]({
                          "_,_": function (x11, x12) {
                            return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x8(x11))(x9(x11)(x12));
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
                  return function (x8) {
                    return x8;
                  };
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
              return function (x6) {
                return exports["map"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x7) {
                  return x7;
                })(x6);
              };
            };
          };
        };
      };
    };
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
                                  return x14["_,_"]({
                                    "_,_": function (x16, x17) {
                                      return x15["_,_"]({
                                        "_,_": function (x18, x19) {
                                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x12(x16)(x18))(x13(x16)(x18)(x17)(x19));
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
exports["curry"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x7)(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["uncurry"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x7["_,_"]({
                    "_,_": function (x8, x9) {
                      return x6(x8)(x9);
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
exports["zip′"] = function (x0) {
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
                              return exports["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x12)(function (x14) {
                                return function (x15) {
                                  return x13;
                                };
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
exports["curry′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x7)(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["uncurry′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["uncurry"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
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
          return function (x4) {
            return x4["_,_"]({
              "_,_": function (x5, x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x6)(x5);
              }
            });
          };
        };
      };
    };
  };
exports["_-,-_"] = function (x0) {
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
                          return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x8(x10)(x11))(x9(x10)(x11));
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Σ-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_×_"] = agdaRTS.primIntegerFromString("0");
exports["∃"] = agdaRTS.primIntegerFromString("0");
exports["∄"] = agdaRTS.primIntegerFromString("0");
exports["∃₂"] = agdaRTS.primIntegerFromString("0");
exports["∃!"] = agdaRTS.primIntegerFromString("0");
exports["∃-syntax"] = agdaRTS.primIntegerFromString("0");
exports["∄-syntax"] = agdaRTS.primIntegerFromString("0");
exports["_-×-_"] = agdaRTS.primIntegerFromString("0");

