var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Construct_NonStrictToStrict = require("jAgda.Relation.Binary.Construct.NonStrictToStrict");
var z_jAgda_Relation_Binary_Properties_Preorder = require("jAgda.Relation.Binary.Properties.Preorder");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["PreorderProperties"] = {};
exports["PreorderProperties"]["invIsPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Properties_Preorder["invIsPreorder"](z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["PreorderProperties"]["invPreorder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Properties_Preorder["invPreorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["≥-isPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["record"](z_jAgda_Relation_Binary_Properties_Preorder["invIsPreorder"](z_jAgda_Relation_Binary_Bundles["Poset"]["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3)))(function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](x3))(x4)(x5)(x7)(x6);
                };
              };
            };
          });
        };
      };
    };
  };
exports["≥-poset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["Poset"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["≥-isPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["_NameId 142 4978701430219875370"] = {};
exports["_NameId 142 4978701430219875370"]["antisym"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["antisym"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](x3))(x4)(x5)(x7)(x6);
                };
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 142 4978701430219875370"]["refl"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsPreorder"]["refl"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](exports["≥-poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))));
        };
      };
    };
  };
exports["_NameId 142 4978701430219875370"]["reflexive"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Structures["IsPreorder"]["reflexive"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](x3)))(x5)(x4)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Structures["IsPreorder"]["isEquivalence"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](x3))))(x4)(x5)(x6));
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 142 4978701430219875370"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Structures["IsPreorder"]["trans"](z_jAgda_Relation_Binary_Structures["IsPartialOrder"]["isPreorder"](z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](x3)))(x6)(x5)(x4)(x8)(x7);
                  };
                };
              };
            };
          };
        };
      };
    };
  };
exports["<-isStrictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Construct_NonStrictToStrict["<-isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Bundles["Poset"]["isPartialOrder"](x3));
        };
      };
    };
  };
exports["<-strictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Bundles["StrictPartialOrder"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["<-isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["_NameId 158 4978701430219875370"] = {};
exports["_NameId 158 4978701430219875370"]["<-resp-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](exports["<-isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["_NameId 158 4978701430219875370"]["<-respʳ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["fst"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](z_jAgda_Relation_Binary_Bundles["StrictPartialOrder"]["isStrictPartialOrder"](exports["<-strictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5)(x6);
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 158 4978701430219875370"]["<-respˡ-≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return z_jAgda_Agda_Builtin_Sigma["Σ"]["snd"](z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["<-resp-≈"](z_jAgda_Relation_Binary_Bundles["StrictPartialOrder"]["isStrictPartialOrder"](exports["<-strictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3))))(x4)(x5)(x6);
              };
            };
          };
        };
      };
    };
  };
exports["_NameId 158 4978701430219875370"]["trans"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Relation_Binary_Structures["IsStrictPartialOrder"]["trans"](exports["<-isStrictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3));
        };
      };
    };
  };
exports["≤∧≉⇒<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return z_jAgda_Agda_Builtin_Sigma["Σ"]["_,_"];
      };
    };
  };
exports["invIsPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≥-isPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["invPoset"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["≥-poset"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["strictPartialOrder"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return exports["<-strictPartialOrder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x3);
        };
      };
    };
  };
exports["_≉_"] = agdaRTS.primIntegerFromString("0");
exports["_≥_"] = agdaRTS.primIntegerFromString("0");
exports["_<_"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 158 4978701430219875370"]["asym"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 158 4978701430219875370"]["irrefl"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≉"] = agdaRTS.primIntegerFromString("0");
exports["<⇒≱"] = agdaRTS.primIntegerFromString("0");
exports["≤⇒≯"] = agdaRTS.primIntegerFromString("0");

