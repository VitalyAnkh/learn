var agdaRTS = require("agda-rts");

exports["_IsRelatedTo_"] = {};
exports["_IsRelatedTo_"]["relTo"] = function (x0) {
    return function (x1) {
      return x1["relTo"](x0);
    };
  };
exports["begin_"] = function (x0) {
    return x0({
      "relTo": function (x1) {
        return x1;
      }
    });
  };
exports["_∼⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x9({
                        "relTo": function (x10) {
                          return exports["_IsRelatedTo_"]["relTo"](x4(x5)(x6)(x7)(x8)(x10));
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
  };
exports["_≡⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x9;
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
exports["_≡˘⟨_⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return function (x8) {
                    return function (x9) {
                      return x9;
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
exports["_≡⟨⟩_"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return function (x7) {
                  return x7;
                };
              };
            };
          };
        };
      };
    };
  };
exports["_∎⟨_⟩"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return exports["_IsRelatedTo_"]["relTo"](x6);
              };
            };
          };
        };
      };
    };
  };

