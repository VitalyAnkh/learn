var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Category_Functor = require("jAgda.Category.Functor");

exports["RawIApplicative"] = {};
exports["RawIApplicative"]["pure"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["RawIApplicative"]["record"] = function (x0) {
    return function (x1) {
      return {
        "_⊛_": x1,
        "pure": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["RawIApplicative"]["_⊛_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["RawIApplicative"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["record"](function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["RawIApplicative"]["_⊛_"](x4)(x5)(x5)(x6)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicative"]["pure"](x4)(x5)(agdaRTS.primIntegerFromString("0"))(x9));
                    };
                  };
                });
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["RF"] = {};
exports["RawIApplicative"]["RF"]["_<$_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
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
exports["RawIApplicative"]["RF"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["RF"]["_<&>_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(x9);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["_<⊛_"] = function (x0) {
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
                          return exports["RawIApplicative"]["_⊛_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x12) {
                            return function (x13) {
                              return x12;
                            };
                          })(x10))(x11);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["_⊛>_"] = function (x0) {
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
                          return exports["RawIApplicative"]["_⊛_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x12) {
                            return function (x13) {
                              return x13;
                            };
                          })(x10))(x11);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["_⊗_"] = function (x0) {
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
                          return exports["RawIApplicative"]["_⊛_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"])(x10))(x11);
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["zipWith"] = function (x0) {
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
                              return exports["RawIApplicative"]["_⊛_"](x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x11)(x12))(x13);
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicative"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(x5)(x6)(x7)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"]);
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"] = {};
exports["RawIApplicativeZero"]["applicative"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["RawIApplicativeZero"]["∅"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"] = {};
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_<$_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
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
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4))(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_<&>_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(x9);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_⊛_"](exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["pure"] = function (x0) {
    return exports["RawIApplicative"]["pure"](exports["RawIApplicativeZero"]["applicative"](x0));
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIApplicativeZero"]["_NameId 210 16472795015942583014"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](x4));
          };
        };
      };
    };
  };
exports["RawIAlternative"] = {};
exports["RawIAlternative"]["applicativeZero"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["RawIAlternative"]["_∣_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"] = {};
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_<$_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x11) {
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
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)))(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_<&>_"] = function (x0) {
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
                        return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)))(x5)(x6))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x10)(x9);
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_⊛_"](exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["applicative"] = function (x0) {
    return exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x0));
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["pure"] = function (x0) {
    return exports["RawIApplicative"]["pure"](exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x0)));
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["RawIApplicativeZero"]["applicative"](exports["RawIAlternative"]["applicativeZero"](x4)));
          };
        };
      };
    };
  };
exports["RawIAlternative"]["_NameId 272 16472795015942583014"]["∅"] = function (x0) {
    return exports["RawIApplicativeZero"]["∅"](exports["RawIAlternative"]["applicativeZero"](x0));
  };
exports["A₁"] = {};
exports["A₁"]["_<$_"] = function (x0) {
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
                            return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x7)(x8))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x13) {
                              return x11;
                            })(x12);
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x7)(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["_<&>_"] = function (x0) {
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
                            return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x7)(x8))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x12)(x11);
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["_⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_⊛_"](x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["pure"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["pure"](x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₁"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              };
            };
          };
        };
      };
    };
  };
exports["A₂"] = {};
exports["A₂"]["_<$_"] = function (x0) {
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
                            return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x7)(x8))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x13) {
                              return x11;
                            })(x12);
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x7)(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["_<&>_"] = function (x0) {
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
                            return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x7)(x8))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x12)(x11);
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["_⊛_"] = function (x0) {
    return exports["RawIApplicative"]["_⊛_"](x0);
  };
exports["A₂"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["pure"] = function (x0) {
    return exports["RawIApplicative"]["pure"](x0);
  };
exports["A₂"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["A₂"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"] = {};
exports["Morphism"]["A₁"] = {};
exports["Morphism"]["A₁"]["_<$_"] = function (x0) {
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
                              return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x8)(x9))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x14) {
                                return x12;
                              })(x13);
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x8)(x9));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["_<&>_"] = function (x0) {
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
                              return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5)(x8)(x9))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x13)(x12);
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["_⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_⊛_"](x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["pure"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["pure"](x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₁"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"] = {};
exports["Morphism"]["A₂"]["_<$_"] = function (x0) {
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
                              return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x8)(x9))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x14) {
                                return x12;
                              })(x13);
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["_<$>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x8)(x9));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["_<&>_"] = function (x0) {
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
                              return z_jAgda_Category_Functor["RawFunctor"]["_<$>_"](exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6)(x8)(x9))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x13)(x12);
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["_<⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_<⊛_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["_⊗_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_⊗_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["_⊛_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_⊛_"](x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["_⊛>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["_⊛>_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["pure"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["pure"](x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["rawFunctor"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["rawFunctor"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["zip"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["A₂"]["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["RawIApplicative"]["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["Morphism"]["op"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["RawIApplicativeZero"]["record"] = function (x0) {
    return function (x1) {
      return {
        "applicative": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "∅": x1
      };
    };
  };
exports["RawIAlternative"]["record"] = function (x0) {
    return function (x1) {
      return {
        "_∣_": x1,
        "applicativeZero": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["Morphism"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "op": x0,
          "op-pure": x1,
          "op-⊛": x2,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IFun"] = agdaRTS.primIntegerFromString("0");
exports["Morphism"]["op-pure"] = agdaRTS.primIntegerFromString("0");
exports["Morphism"]["op-⊛"] = agdaRTS.primIntegerFromString("0");
exports["Morphism"]["op-<$>"] = agdaRTS.primIntegerFromString("0");

