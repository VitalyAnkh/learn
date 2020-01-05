var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");
var z_jAgda_Relation_Nullary_Reflects = require("jAgda.Relation.Nullary.Reflects");

exports["_⊎_"] = {};
exports["_⊎_"]["inj₁"] = function (x0) {
    return function (x1) {
      return x1["inj₁"](x0);
    };
  };
exports["_⊎_"]["inj₂"] = function (x0) {
    return function (x1) {
      return x1["inj₂"](x0);
    };
  };
exports["[_,_]"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return x8({
                      "inj₁": function (x9) {
                        return x6(x9);
                      },
                      "inj₂": function (x9) {
                        return x7(x9);
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
exports["[_,_]′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["[_,_]"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["fromInj₁"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["[_,_]′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x4) {
            return x4;
          });
        };
      };
    };
  };
exports["fromInj₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["[_,_]′"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(function (x5) {
              return x5;
            });
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
            return x4({
              "inj₁": function (x5) {
                return exports["_⊎_"]["inj₂"](x5);
              },
              "inj₂": function (x5) {
                return exports["_⊎_"]["inj₁"](x5);
              }
            });
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
                      return exports["[_,_]"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(function (x10) {
                        return exports["_⊎_"]["inj₁"](x8(x10));
                      })(function (x10) {
                        return exports["_⊎_"]["inj₂"](x9(x10));
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
exports["fromDec"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["_because_"]({
          "_because_": function (x3, x4) {
            return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x3, {
              "false": function () {
                return exports["_⊎_"]["inj₂"](z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
              },
              "true": function () {
                return exports["_⊎_"]["inj₁"](z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4));
              }
            });
          }
        });
      };
    };
  };
exports["toDec"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2({
          "inj₁": function (x3) {
            return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["true"])(z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](x3));
          },
          "inj₂": function (x3) {
            return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Agda_Builtin_Bool["Bool"]["false"])(z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0")));
          }
        });
      };
    };
  };
exports["_-⊎-_"] = agdaRTS.primIntegerFromString("0");

