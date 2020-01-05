var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Data_Bool_Base = require("jAgda.Data.Bool.Base");
var z_jAgda_Data_These_Base = require("jAgda.Data.These.Base");
var z_jAgda_Level = require("jAgda.Level");
var z_jAgda_Relation_Nullary_Reflects = require("jAgda.Relation.Nullary.Reflects");

exports["Maybe"] = {};
exports["Maybe"]["nothing"] = function (x0) {
    return x0["nothing"]();
  };
exports["Maybe"]["just"] = function (x0) {
    return function (x1) {
      return x1["just"](x0);
    };
  };
exports["boolToMaybe"] = function (x0) {
    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x0, {
      "false": function () {
        return exports["Maybe"]["nothing"];
      },
      "true": function () {
        return exports["Maybe"]["just"](agdaRTS.primIntegerFromString("0"));
      }
    });
  };
exports["is-just"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "just": function (x3) {
            return z_jAgda_Agda_Builtin_Bool["Bool"]["true"];
          },
          "nothing": function () {
            return z_jAgda_Agda_Builtin_Bool["Bool"]["false"];
          }
        });
      };
    };
  };
exports["is-nothing"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Data_Bool_Base["not"](exports["is-just"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["decToMaybe"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["_because_"]({
          "_because_": function (x3, x4) {
            return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x3, {
              "false": function () {
                return exports["Maybe"]["nothing"];
              },
              "true": function () {
                return exports["Maybe"]["just"](z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
              }
            });
          }
        });
      };
    };
  };
exports["maybe"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return x6({
                  "just": function (x7) {
                    return x4(x7);
                  },
                  "nothing": function () {
                    return x5;
                  }
                });
              };
            };
          };
        };
      };
    };
  };
exports["maybe′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["maybe"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        };
      };
    };
  };
exports["fromMaybe"] = function (x0) {
    return function (x1) {
      return exports["maybe′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x2) {
        return x2;
      });
    };
  };
exports["_NameId 68 14656862477828987818"] = {};
exports["_NameId 68 14656862477828987818"]["from-just"] = function (x0) {
    return x0({
      "just": function (x1) {
        return x1;
      },
      "nothing": function () {
        return z_jAgda_Level["Lift"]["lift"](agdaRTS.primIntegerFromString("0"));
      }
    });
  };
exports["map"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["maybe"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x5) {
              return exports["Maybe"]["just"](x4(x5));
            })(exports["Maybe"]["nothing"]);
          };
        };
      };
    };
  };
exports["ap"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4({
              "just": function (x5) {
                return exports["map"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5);
              },
              "nothing": function () {
                return function (x5) {
                  return x4;
                };
              }
            });
          };
        };
      };
    };
  };
exports["_>>=_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return x4({
                "just": function (x6) {
                  return x5(x6);
                },
                "nothing": function () {
                  return x4;
                }
              });
            };
          };
        };
      };
    };
  };
exports["_<∣>_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2({
            "just": function (x4) {
              return x2;
            },
            "nothing": function () {
              return x3;
            }
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
                    return x7({
                      "just": function (x9) {
                        return x8({
                          "just": function (x10) {
                            return exports["Maybe"]["just"](x6(z_jAgda_Data_These_Base["These"]["these"](x9)(x10)));
                          },
                          "nothing": function () {
                            return exports["Maybe"]["just"](x6(z_jAgda_Data_These_Base["These"]["this"](x9)));
                          }
                        });
                      },
                      "nothing": function () {
                        return x8({
                          "just": function (x9) {
                            return exports["Maybe"]["just"](x6(z_jAgda_Data_These_Base["These"]["that"](x9)));
                          },
                          "nothing": function () {
                            return x8;
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
exports["zipWith"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x7({
                      "just": function (x9) {
                        return x8({
                          "just": function (x10) {
                            return exports["Maybe"]["just"](x6(x9)(x10));
                          },
                          "nothing": function () {
                            return exports["Maybe"]["nothing"];
                          }
                        });
                      },
                      "nothing": function () {
                        return exports["Maybe"]["nothing"];
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
exports["align"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["alignWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x4) {
            return x4;
          });
        };
      };
    };
  };
exports["zip"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["zipWith"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"]);
        };
      };
    };
  };
exports["thisM"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["maybe′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_These_Base["These"]["these"](x4))(z_jAgda_Data_These_Base["These"]["this"](x4));
          };
        };
      };
    };
  };
exports["thatM"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["maybe′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Data_These_Base["These"]["these"])(z_jAgda_Data_These_Base["These"]["that"]);
        };
      };
    };
  };
exports["_NameId 68 14656862477828987818"]["From-just"] = agdaRTS.primIntegerFromString("0");

