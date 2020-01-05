var agdaRTS = require("agda-rts");
var z_jAgda_Algebra_Bundles = require("jAgda.Algebra.Bundles");
var z_jAgda_Relation_Binary_Morphism_Structures = require("jAgda.Relation.Binary.Morphism.Structures");

exports["MagmaMorphisms"] = {};
exports["MagmaMorphisms"]["_NameId 28 9120917086325410849"] = {};
exports["MagmaMorphisms"]["_NameId 28 9120917086325410849"]["_∙_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["RawMagma"]["_∙_"](x4);
            };
          };
        };
      };
    };
  };
exports["MagmaMorphisms"]["IsMagmaHomomorphism"] = {};
exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["_NameId 84 9120917086325410849"] = {};
exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["_NameId 84 9120917086325410849"]["cong"] = function (x0) {
    return z_jAgda_Relation_Binary_Morphism_Structures["IsRelHomomorphism"]["cong"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](x0));
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"] = {};
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["injective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["_NameId 102 9120917086325410849"] = {};
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["_NameId 102 9120917086325410849"]["homo"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](x0));
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["_NameId 102 9120917086325410849"]["isRelHomomorphism"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](x0));
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["_NameId 102 9120917086325410849"]["cong"] = function (x0) {
    return z_jAgda_Relation_Binary_Morphism_Structures["IsRelHomomorphism"]["cong"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](x0)));
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Morphism_Structures["IsRelMonomorphism"]["record"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](x7)))(exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["injective"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"] = {};
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["surjective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"] = {};
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"]["homo"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x0)));
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"]["injective"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["injective"](exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x0));
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"]["isMagmaHomomorphism"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x0));
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"]["isRelHomomorphism"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x0)));
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"]["isRelMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["_NameId 126 9120917086325410849"]["cong"] = function (x0) {
    return z_jAgda_Relation_Binary_Morphism_Structures["IsRelHomomorphism"]["cong"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"](exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x0))));
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isRelIsomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Morphism_Structures["IsRelIsomorphism"]["record"](exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x7)))(exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["surjective"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"] = {};
exports["MonoidMorphisms"]["_NameId 156 9120917086325410849"] = {};
exports["MonoidMorphisms"]["_NameId 156 9120917086325410849"]["ε"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Algebra_Bundles["RawMonoid"]["ε"](x4);
            };
          };
        };
      };
    };
  };
exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "homo": x1,
        "isRelHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"] = {};
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaIsomorphism"] = {};
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaIsomorphism"]["isRelIsomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isRelIsomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaIsomorphism"]["isRelMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaMonomorphism"] = {};
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaMonomorphism"]["isRelMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidHomomorphism"] = {};
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["ε-homo"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["_NameId 270 9120917086325410849"] = {};
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["_NameId 270 9120917086325410849"]["homo"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](x0));
  };
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["_NameId 270 9120917086325410849"]["isRelHomomorphism"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](x0));
  };
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["_NameId 270 9120917086325410849"]["cong"] = function (x0) {
    return z_jAgda_Relation_Binary_Morphism_Structures["IsRelHomomorphism"]["cong"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](x0)));
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"] = {};
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["injective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 292 9120917086325410849"] = {};
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 292 9120917086325410849"]["homo"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](x0)));
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 292 9120917086325410849"]["isMagmaHomomorphism"] = function (x0) {
    return exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](x0));
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 292 9120917086325410849"]["isRelHomomorphism"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](x0)));
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 292 9120917086325410849"]["ε-homo"] = function (x0) {
    return exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["ε-homo"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](x0));
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 292 9120917086325410849"]["cong"] = function (x0) {
    return z_jAgda_Relation_Binary_Morphism_Structures["IsRelHomomorphism"]["cong"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](x0))));
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMagmaMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["record"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](x7)))(exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["injective"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 306 9120917086325410849"] = {};
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["_NameId 306 9120917086325410849"]["isRelMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMagmaMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"] = {};
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["surjective"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"] = {};
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["homo"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0))));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["injective"] = function (x0) {
    return exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["injective"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["isMagmaHomomorphism"] = function (x0) {
    return exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0)));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["isMagmaMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMagmaMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["isMonoidHomomorphism"] = function (x0) {
    return exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["isRelHomomorphism"] = function (x0) {
    return exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0))));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["isRelMonomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isRelMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMagmaMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x7)));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["ε-homo"] = function (x0) {
    return exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["ε-homo"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0)));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 324 9120917086325410849"]["cong"] = function (x0) {
    return z_jAgda_Relation_Binary_Morphism_Structures["IsRelHomomorphism"]["cong"](exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"](exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["isMagmaHomomorphism"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMonoidHomomorphism"](exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x0)))));
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMagmaIsomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["record"](exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["isMagmaMonomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMonoidMonomorphism"](x7)))(exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["surjective"](x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 346 9120917086325410849"] = {};
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["_NameId 346 9120917086325410849"]["isRelIsomorphism"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isRelIsomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["isMagmaIsomorphism"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x7));
                };
              };
            };
          };
        };
      };
    };
  };
exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "injective": x1,
        "isMagmaHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMagmaMonomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaMonomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "injective": x1,
        "isMagmaHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaIsomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMagmaMonomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaHomomorphism"] = {};
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaHomomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "homo": x1,
        "isRelHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidHomomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMagmaHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "ε-homo": x1
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidMonomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "injective": x1,
        "isMonoidHomomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["MonoidMorphisms"]["IsMonoidIsomorphism"]["record"] = function (x0) {
    return function (x1) {
      return {
        "isMonoidMonomorphism": x0,
        "record": function (x2) {
          return x2["record"](x0, x1);
        },
        "surjective": x1
      };
    };
  };
exports["MagmaMorphisms"]["_NameId 28 9120917086325410849"]["_≈_"] = agdaRTS.primIntegerFromString("0");
exports["MagmaMorphisms"]["_NameId 28 9120917086325410849"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["MagmaMorphisms"]["_NameId 44 9120917086325410849"] = {};
exports["MagmaMorphisms"]["_NameId 44 9120917086325410849"]["Homomorphic₂"] = agdaRTS.primIntegerFromString("0");
exports["MagmaMorphisms"]["_NameId 54 9120917086325410849"] = {};
exports["MagmaMorphisms"]["_NameId 54 9120917086325410849"]["Injective"] = agdaRTS.primIntegerFromString("0");
exports["MagmaMorphisms"]["_NameId 54 9120917086325410849"]["Surjective"] = agdaRTS.primIntegerFromString("0");
exports["MonoidMorphisms"]["_NameId 156 9120917086325410849"]["Carrier"] = agdaRTS.primIntegerFromString("0");
exports["MonoidMorphisms"]["_NameId 180 9120917086325410849"] = {};
exports["MonoidMorphisms"]["_NameId 180 9120917086325410849"]["Homomorphic₀"] = agdaRTS.primIntegerFromString("0");
exports["MonoidMorphisms"]["_NameId 190 9120917086325410849"] = {};
exports["MonoidMorphisms"]["_NameId 190 9120917086325410849"]["Injective"] = agdaRTS.primIntegerFromString("0");
exports["MonoidMorphisms"]["_NameId 190 9120917086325410849"]["Surjective"] = agdaRTS.primIntegerFromString("0");
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaHomomorphism"]["homo"] = exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["homo"];
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaHomomorphism"]["isRelHomomorphism"] = exports["MagmaMorphisms"]["IsMagmaHomomorphism"]["isRelHomomorphism"];
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"] = exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["isMagmaMonomorphism"];
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaIsomorphism"]["surjective"] = exports["MagmaMorphisms"]["IsMagmaIsomorphism"]["surjective"];
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaMonomorphism"]["injective"] = exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["injective"];
exports["MonoidMorphisms"]["_NameId 206 9120917086325410849"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"] = exports["MagmaMorphisms"]["IsMagmaMonomorphism"]["isMagmaHomomorphism"];

