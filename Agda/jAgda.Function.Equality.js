var agdaRTS = require("agda-rts");
var z_jAgda_Relation_Binary_Bundles = require("jAgda.Relation.Binary.Bundles");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Bundles");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Construct_Trivial = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial");
var z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures = require("jAgda.Relation.Binary.Indexed.Heterogeneous.Structures");
var z_jAgda_Relation_Binary_Structures = require("jAgda.Relation.Binary.Structures");

exports["Π"] = {};
exports["Π"]["record"] = function (x0) {
    return function (x1) {
      return {
        "_⟨$⟩_": x0,
        "cong": x1,
        "record": function (x2) {
          return x2["record"](x0, x1);
        }
      };
    };
  };
exports["Π"]["_⟨$⟩_"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x1;
      }
    });
  };
exports["Π"]["cong"] = function (x0) {
    return x0["record"]({
      "record": function (x1, x2) {
        return x2;
      }
    });
  };
exports["id"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return exports["Π"]["record"](function (x3) {
          return x3;
        })(function (x3) {
          return function (x4) {
            return function (x5) {
              return x5;
            };
          };
        });
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
                    return exports["Π"]["record"](function (x9) {
                      return exports["Π"]["_⟨$⟩_"](x7)(exports["Π"]["_⟨$⟩_"](x8)(x9));
                    })(function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return exports["Π"]["cong"](x7)(exports["Π"]["_⟨$⟩_"](x8)(x9))(exports["Π"]["_⟨$⟩_"](x8)(x10))(exports["Π"]["cong"](x8)(x9)(x10)(x11));
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
    };
  };
exports["const"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return exports["Π"]["record"](function (x5) {
              return x4;
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x3))(x4);
                };
              };
            });
          };
        };
      };
    };
  };
exports["setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](exports["Π"]["cong"])(function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["sym"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["isEquivalence"](x5))(x10)(x9)(exports["Π"]["_⟨$⟩_"](x6)(x10))(exports["Π"]["_⟨$⟩_"](x7)(x9))(x8(x10)(x9)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["sym"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x4))(x9)(x10)(x11)));
                        };
                      };
                    };
                  };
                };
              })(function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["trans"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["isEquivalence"](x5))(x11)(x11)(x12)(exports["Π"]["_⟨$⟩_"](x6)(x11))(exports["Π"]["_⟨$⟩_"](x7)(x11))(exports["Π"]["_⟨$⟩_"](x8)(x12))(x9(x11)(x11)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x4))(x11)))(x10(x11)(x12)(x13));
                            };
                          };
                        };
                      };
                    };
                  };
                };
              }));
            };
          };
        };
      };
    };
  };
exports["_⇨_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return exports["setoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x4)(z_jAgda_Relation_Binary_Indexed_Heterogeneous_Construct_Trivial["indexedSetoid"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(x5));
            };
          };
        };
      };
    };
  };
exports["≡-setoid"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return z_jAgda_Relation_Binary_Bundles["Setoid"]["record"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"))(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["record"](function (x5) {
              return function (x6) {
                return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["refl"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["isEquivalence"](x4))(x6)(x5(x6));
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["sym"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["isEquivalence"](x4))(x8)(x8)(x5(x8))(x6(x8))(x7(x8));
                  };
                };
              };
            })(function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return z_jAgda_Relation_Binary_Indexed_Heterogeneous_Structures["IsIndexedEquivalence"]["trans"](z_jAgda_Relation_Binary_Indexed_Heterogeneous_Bundles["IndexedSetoid"]["isEquivalence"](x4))(x10)(x10)(x10)(x5(x10))(x6(x10))(x7(x10))(x8(x10))(x9(x10));
                      };
                    };
                  };
                };
              };
            }));
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
                  return exports["Π"]["record"](function (x8) {
                    return exports["Π"]["record"](function (x9) {
                      return exports["Π"]["_⟨$⟩_"](exports["Π"]["_⟨$⟩_"](x7)(x9))(x8);
                    })(function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return exports["Π"]["cong"](x7)(x9)(x10)(x11)(x8)(x8)(z_jAgda_Relation_Binary_Structures["IsEquivalence"]["refl"](z_jAgda_Relation_Binary_Bundles["Setoid"]["isEquivalence"](x3))(x8));
                        };
                      };
                    });
                  })(function (x8) {
                    return function (x9) {
                      return function (x10) {
                        return function (x11) {
                          return function (x12) {
                            return function (x13) {
                              return exports["Π"]["cong"](x7)(x11)(x12)(x13)(x8)(x9)(x10);
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
      };
    };
  };
exports["_⟶_"] = agdaRTS.primIntegerFromString("0");

