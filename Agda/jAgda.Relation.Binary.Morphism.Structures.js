var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");

exports["IsRelHomomorphism"] = {};
exports["IsRelHomomorphism"]["cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1) {
        return x1;
      }
    });
  };
exports["IsRelHomomorphism"]["record"] = function (x0) {
    return {
      "cong": x0,
      "record": function (x1) {
        return x1["record"](x0);
      }
    };
  };
exports["IsRelMonomorphism"] = {};
exports["IsRelMonomorphism"]["isHomomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsRelMonomorphism"]["injective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsRelMonomorphism"]["_NameId 78 7325653108060934341"] = {};
exports["IsRelMonomorphism"]["_NameId 78 7325653108060934341"]["cong"] = function (x0) {
    return exports["IsRelHomomorphism"]["cong"](exports["IsRelMonomorphism"]["isHomomorphism"](x0));
  };
exports["IsRelIsomorphism"] = {};
exports["IsRelIsomorphism"]["isMonomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsRelIsomorphism"]["surjective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsRelIsomorphism"]["_NameId 108 7325653108060934341"] = {};
exports["IsRelIsomorphism"]["_NameId 108 7325653108060934341"]["cong"] = function (x0) {
    return exports["IsRelHomomorphism"]["cong"](exports["IsRelMonomorphism"]["isHomomorphism"](exports["IsRelIsomorphism"]["isMonomorphism"](x0)));
  };
exports["IsRelIsomorphism"]["_NameId 108 7325653108060934341"]["injective"] = function (x0) {
    return exports["IsRelMonomorphism"]["injective"](exports["IsRelIsomorphism"]["isMonomorphism"](x0));
  };
exports["IsRelIsomorphism"]["_NameId 108 7325653108060934341"]["isHomomorphism"] = function (x0) {
    return exports["IsRelMonomorphism"]["isHomomorphism"](exports["IsRelIsomorphism"]["isMonomorphism"](x0));
  };
exports["IsRelIsomorphism"]["bijective"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](exports["IsRelMonomorphism"]["injective"](exports["IsRelIsomorphism"]["isMonomorphism"](x9)))(exports["IsRelIsomorphism"]["surjective"](x9));
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderHomomorphism"] = {};
exports["IsOrderHomomorphism"]["cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsOrderHomomorphism"]["mono"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsOrderHomomorphism"]["Eq"] = {};
exports["IsOrderHomomorphism"]["Eq"]["isRelHomomorphism"] = function (x0) {
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
                              return exports["IsRelHomomorphism"]["record"](exports["IsOrderHomomorphism"]["cong"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderHomomorphism"]["isRelHomomorphism"] = function (x0) {
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
                              return exports["IsRelHomomorphism"]["record"](exports["IsOrderHomomorphism"]["mono"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderMonomorphism"] = {};
exports["IsOrderMonomorphism"]["isOrderHomomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["IsOrderMonomorphism"]["injective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["IsOrderMonomorphism"]["cancel"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["IsOrderMonomorphism"]["_NameId 204 7325653108060934341"] = {};
exports["IsOrderMonomorphism"]["_NameId 204 7325653108060934341"]["cong"] = function (x0) {
    return exports["IsOrderHomomorphism"]["cong"](exports["IsOrderMonomorphism"]["isOrderHomomorphism"](x0));
  };
exports["IsOrderMonomorphism"]["_NameId 204 7325653108060934341"]["isRelHomomorphism"] = function (x0) {
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
                              return exports["IsOrderHomomorphism"]["isRelHomomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsOrderMonomorphism"]["isOrderHomomorphism"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsRelMonomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "injective": x1,
        "isHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsOrderMonomorphism"]["_NameId 204 7325653108060934341"]["mono"] = function (x0) {
    return exports["IsOrderHomomorphism"]["mono"](exports["IsOrderMonomorphism"]["isOrderHomomorphism"](x0));
  };
exports["IsOrderMonomorphism"]["Eq"] = {};
exports["IsOrderMonomorphism"]["Eq"]["isRelMonomorphism"] = function (x0) {
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
                              return exports["IsRelMonomorphism"]["record"](exports["IsOrderHomomorphism"]["Eq"]["isRelHomomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsOrderMonomorphism"]["isOrderHomomorphism"](x13)))(exports["IsOrderMonomorphism"]["injective"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderMonomorphism"]["isRelMonomorphism"] = function (x0) {
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
                              return exports["IsRelMonomorphism"]["record"](exports["IsOrderHomomorphism"]["isRelHomomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsOrderMonomorphism"]["isOrderHomomorphism"](x13)))(exports["IsOrderMonomorphism"]["cancel"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderIsomorphism"] = {};
exports["IsOrderIsomorphism"]["isOrderMonomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["IsOrderIsomorphism"]["surjective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"] = {};
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["cancel"] = function (x0) {
    return exports["IsOrderMonomorphism"]["cancel"](exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x0));
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["cong"] = function (x0) {
    return exports["IsOrderHomomorphism"]["cong"](exports["IsOrderMonomorphism"]["isOrderHomomorphism"](exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x0)));
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["injective"] = function (x0) {
    return exports["IsOrderMonomorphism"]["injective"](exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x0));
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["isOrderHomomorphism"] = function (x0) {
    return exports["IsOrderMonomorphism"]["isOrderHomomorphism"](exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x0));
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["isRelHomomorphism"] = function (x0) {
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
                              return exports["IsOrderHomomorphism"]["isRelHomomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsOrderMonomorphism"]["isOrderHomomorphism"](exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x13)));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["isRelMonomorphism"] = function (x0) {
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
                              return exports["IsOrderMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsOrderIsomorphism"]["_NameId 256 7325653108060934341"]["mono"] = function (x0) {
    return exports["IsOrderHomomorphism"]["mono"](exports["IsOrderMonomorphism"]["isOrderHomomorphism"](exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x0)));
  };
exports["IsOrderIsomorphism"]["Eq"] = {};
exports["IsOrderIsomorphism"]["Eq"]["isRelIsomorphism"] = function (x0) {
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
                              return exports["IsRelIsomorphism"]["record"](exports["IsOrderMonomorphism"]["Eq"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["IsOrderIsomorphism"]["isOrderMonomorphism"](x13)))(exports["IsOrderIsomorphism"]["surjective"](x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["IsRelIsomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMonomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["IsOrderHomomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "cong": x0,
        "mono": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["IsOrderMonomorphism"]["record"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "cancel": x2,
          "injective": x1,
          "isOrderHomomorphism": x0,
          "record": function (x3) {
            return x3["record"](x0, x1, x2);
          }
        };
      };
    };
  };
exports["IsOrderIsomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isOrderMonomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["_NameId 16 7325653108060934341"] = {};
exports["_NameId 16 7325653108060934341"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");

