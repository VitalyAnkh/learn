var agdaRTS = require("agda-rts");

exports["_≤_"] = {};
exports["_≤_"]["z≤n"] = function (x0) {
    return function (x1) {
      return x1["z≤n"](x0);
    };
  };
exports["_≤_"]["s≤s"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3["s≤s"](x0, x1, x2);
        };
      };
    };
  };

exports["main"](function (x0) {
  return {};
})