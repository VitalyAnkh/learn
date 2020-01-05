var agdaRTS = require("agda-rts");
var z_jAgda_Category_Applicative_Indexed = require("jAgda.Category.Applicative.Indexed");
var z_jAgda_Category_Functor = require("jAgda.Category.Functor");

exports["RawIMonad"] = {};
exports["RawIMonad"]["record"] = function (x0) {
    return function (x1) {
      return {
        "_>>=_": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "return": x0
      };
    };
  };
exports["RawIMonad"]["return"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["RawIMonad"]["_>>=_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["RawIMonad"]["_>>_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return x11;
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
exports["RawIMonad"]["_=<<_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(x10);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonad"]["_>=>_"] = function (x0) {
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
                                return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x12(x14))(x13);
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonad"]["_<=<_"] = function (x0) {
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
                                return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x13(x14))(x12);
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonad"]["join"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x9)(function (x10) {
                        return x10;
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
exports["RawIMonad"]["rawIApplicative"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["record"](exports["RawIMonad"]["return"](x4))(function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return exports["RawIMonad"]["_>>=_"](x4)(x6)(x7)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(function (x13) {
                              return exports["RawIMonad"]["return"](x4)(x7)(agdaRTS.primIntegerFromString("0"))(x12(x13));
                            });
                          });
                        };
                      };
                    };
                  };
                };
              };
            });
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"] = {};
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_<$_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
                          return x9;
                        })(x10);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4))(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_<&>_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(x9);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_⊛_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return exports["RawIMonad"]["_>>=_"](x4)(x6)(x7)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(function (x13) {
                              return exports["RawIMonad"]["return"](x4)(x7)(agdaRTS.primIntegerFromString("0"))(x12(x13));
                            });
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
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["pure"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["return"](x4);
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
          };
        };
      };
    };
  };
exports["RawIMonad"]["_NameId 156 9628718109934474145"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
          };
        };
      };
    };
  };
exports["RawIMonadZero"] = {};
exports["RawIMonadZero"]["monad"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["RawIMonadZero"]["applicativeZero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"] = {};
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_<$_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
                          return x9;
                        })(x10);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)))(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_<&>_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(x9);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_<=<_"] = function (x0) {
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
                                return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x13(x14))(x12);
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_=<<_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(x10);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_>=>_"] = function (x0) {
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
                                return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x12(x14))(x13);
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_>>_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return x11;
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
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_>>=_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_⊛_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return exports["RawIMonad"]["_>>=_"](exports["RawIMonadZero"]["monad"](x4))(x6)(x7)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(function (x13) {
                              return exports["RawIMonad"]["return"](exports["RawIMonadZero"]["monad"](x4))(x7)(agdaRTS.primIntegerFromString("0"))(x12(x13));
                            });
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
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["join"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["join"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["pure"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["return"](exports["RawIMonadZero"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["rawIApplicative"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["return"] = function (x0) {
    return exports["RawIMonad"]["return"](exports["RawIMonadZero"]["monad"](x0));
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 220 9628718109934474145"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadZero"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["_NameId 260 9628718109934474145"] = {};
exports["RawIMonadZero"]["_NameId 260 9628718109934474145"]["∅"] = function (x0) {
    return z_jAgda_Category_Applicative_Indexed["RawIApplicativeZero"]["∅"](exports["RawIMonadZero"]["applicativeZero"](x0));
  };
exports["RawIMonadPlus"] = {};
exports["RawIMonadPlus"]["monad"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["RawIMonadPlus"]["alternative"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"] = {};
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_<$_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
                          return x9;
                        })(x10);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)))(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_<&>_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(x9);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_<=<_"] = function (x0) {
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
                                return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x13(x14))(x12);
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_=<<_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(x10);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_>=>_"] = function (x0) {
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
                                return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x12(x14))(x13);
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_>>_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return x11;
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
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_>>=_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_⊛_"] = function (x0) {
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
                          return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4))(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(function (x12) {
                            return exports["RawIMonad"]["_>>=_"](exports["RawIMonadPlus"]["monad"](x4))(x6)(x7)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(function (x13) {
                              return exports["RawIMonad"]["return"](exports["RawIMonadPlus"]["monad"](x4))(x7)(agdaRTS.primIntegerFromString("0"))(x12(x13));
                            });
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
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["join"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["join"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["pure"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["return"](exports["RawIMonadPlus"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["rawIApplicative"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["return"] = function (x0) {
    return exports["RawIMonad"]["return"](exports["RawIMonadPlus"]["monad"](x0));
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 290 9628718109934474145"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Category_Applicative_Indexed["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonad"]["rawIApplicative"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIMonadPlus"]["monad"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadPlus"]["_NameId 330 9628718109934474145"] = {};
exports["RawIMonadPlus"]["_NameId 330 9628718109934474145"]["_∣_"] = function (x0) {
    return z_jAgda_Category_Applicative_Indexed["RawIAlternative"]["_∣_"](exports["RawIMonadPlus"]["alternative"](x0));
  };
exports["RawIMonadPlus"]["_NameId 330 9628718109934474145"]["∅"] = function (x0) {
    return z_jAgda_Category_Applicative_Indexed["RawIApplicativeZero"]["∅"](z_jAgda_Category_Applicative_Indexed["RawIAlternative"]["applicativeZero"](exports["RawIMonadPlus"]["alternative"](x0)));
  };
exports["RawIMonadPlus"]["monadZero"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIMonadZero"]["record"](exports["RawIMonadPlus"]["monad"](x4))(z_jAgda_Category_Applicative_Indexed["RawIAlternative"]["applicativeZero"](exports["RawIMonadPlus"]["alternative"](x4)));
          };
        };
      };
    };
  };
exports["RawIMonadZero"]["record"] = function (x0) {
    return function (x1) {
      return {
        "applicativeZero": x1,
        "monad": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["RawIMonadPlus"]["record"] = function (x0) {
    return function (x1) {
      return {
        "alternative": x1,
        "monad": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["RawIMonadT"] = agdaRTS.primIntegerFromString("0");

