var agdaRTS = require("agda-rts");

exports["id"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2;
      };
    };
  };
exports["const"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4;
            };
          };
        };
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
                    return x6(x8)(x7(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["flip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(x8)(x7);
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_$_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4(x5);
            };
          };
        };
      };
    };
  };
exports["_$!_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return (agdaRTS.primSeq)(x5, x4(x5));
            };
          };
        };
      };
    };
  };
exports["_|>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x5(x4);
            };
          };
        };
      };
    };
  };
exports["_ˢ_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(x8)(x7(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_$-"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4(x5);
            };
          };
        };
      };
    };
  };
exports["λ-"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4(x5);
            };
          };
        };
      };
    };
  };
exports["case_return_of_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x5(x3);
            };
          };
        };
      };
    };
  };
exports["_∘′_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x6(x7(x8));
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_$′_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4;
          };
        };
      };
    };
  };
exports["_$!′_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["_$!_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        };
      };
    };
  };
exports["_|>′_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x5(x4);
            };
          };
        };
      };
    };
  };
exports["case_of_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x5(x4);
            };
          };
        };
      };
    };
  };
exports["_⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x7(x6)(x8);
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_on_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x6(x7(x8))(x7(x9));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_-[_]-_"] = function (x0) {
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
                                return x11(x10(x13)(x14))(x12(x13)(x14));
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["_∋_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2;
      };
    };
  };
exports["typeOf"] = agdaRTS.primIntegerFromString("0");

