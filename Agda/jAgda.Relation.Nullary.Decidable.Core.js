var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Data_Bool_Base = require("jAgda.Data.Bool.Base");
var z_jAgda_Level = require("jAgda.Level");
var z_jAgda_Relation_Nullary = require("jAgda.Relation.Nullary");
var z_jAgda_Relation_Nullary_Reflects = require("jAgda.Relation.Nullary.Reflects");

exports["isYes"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["_because_"]({
          "_because_": function (x3, x4) {
            return x3;
          }
        });
      };
    };
  };
exports["isNo"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Data_Bool_Base["not"](exports["isYes"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x2));
      };
    };
  };
exports["toWitness"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2["_because_"]({
            "_because_": function (x4, x5) {
              return (agdaRTS.primSeq)(x4, z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5));
            }
          });
        };
      };
    };
  };
exports["_NameId 60 16368259409245829246"] = {};
exports["_NameId 60 16368259409245829246"]["from-yes"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["_because_"]({
          "_because_": function (x3, x4) {
            return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x3, {
              "false": function () {
                return z_jAgda_Level["Lift"]["lift"](agdaRTS.primIntegerFromString("0"));
              },
              "true": function () {
                return z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
              }
            });
          }
        });
      };
    };
  };
exports["_NameId 60 16368259409245829246"]["from-no"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["_because_"]({
          "_because_": function (x3, x4) {
            return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x3, {
              "false": function () {
                return z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4);
              },
              "true": function () {
                return z_jAgda_Level["Lift"]["lift"](agdaRTS.primIntegerFromString("0"));
              }
            });
          }
        });
      };
    };
  };
exports["dec-yes"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2["_because_"]({
            "_because_": function (x4, x5) {
              return (agdaRTS.primSeq)(x4, x5({
                "ofʸ": function (x6) {
                  return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](x6)(agdaRTS.primIntegerFromString("0"));
                }
              }));
            }
          });
        };
      };
    };
  };
exports["dec-no"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x2["_because_"]({
            "_because_": function (x4, x5) {
              return (agdaRTS.primSeq)(x4, (agdaRTS.primSeq)(x5, z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))));
            }
          });
        };
      };
    };
  };
exports["map′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Nullary["Dec"]["_because_"](z_jAgda_Relation_Nullary["Dec"]["does"](x6))(x6["_because_"]({
                  "_because_": function (x7, x8) {
                    return (function (x,v) { return ((x)? v["true"]() : v["false"]()); })(x7, {
                      "false": function () {
                        return z_jAgda_Relation_Nullary["Reflects"]["ofⁿ"](agdaRTS.primIntegerFromString("0"));
                      },
                      "true": function () {
                        return z_jAgda_Relation_Nullary["Reflects"]["ofʸ"](x4(z_jAgda_Relation_Nullary_Reflects["invert"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x8)));
                      }
                    });
                  }
                }));
              };
            };
          };
        };
      };
    };
  };
exports["isYes≗does"] = agdaRTS.primIntegerFromString("0");
exports["⌊_⌋"] = exports["isYes"];
exports["True"] = agdaRTS.primIntegerFromString("0");
exports["False"] = agdaRTS.primIntegerFromString("0");
exports["fromWitness"] = agdaRTS.primIntegerFromString("0");
exports["toWitnessFalse"] = agdaRTS.primIntegerFromString("0");
exports["fromWitnessFalse"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 16368259409245829246"]["From-yes"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 60 16368259409245829246"]["From-no"] = agdaRTS.primIntegerFromString("0");
exports["dec-true"] = agdaRTS.primIntegerFromString("0");
exports["dec-false"] = agdaRTS.primIntegerFromString("0");
exports["dec-yes-irr"] = agdaRTS.primIntegerFromString("0");

