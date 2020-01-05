var agdaRTS = require("agda-rts");

exports["Σ"] = {};
exports["Σ"]["fst"] = function (x0) {
    return x0["_,_"]({
      "_,_": function (x1, x2) {
        return x1;
      }
    });
  };
exports["Σ"]["snd"] = function (x0) {
    return x0["_,_"]({
      "_,_": function (x1, x2) {
        return x2;
      }
    });
  };
exports["Σ"]["_,_"] = function (x0) {
    return function (x1) {
      return {
        "_,_": function (x2) {
          return x2["_,_"](x0, x1);
        },
        "fst": x0,
        "snd": x1
      };
    };
  };

