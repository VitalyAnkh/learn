var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Primitive = require("jAgda.Agda.Primitive");

exports["Lift"] = {};
exports["Lift"]["lower"] = function (x0) {
    return x0["lift"]({
      "lift": function (x1) {
        return x1;
      }
    });
  };
exports["Lift"]["lift"] = function (x0) {
    return {
      "lift": function (x1) {
        return x1["lift"](x0);
      },
      "lower": x0
    };
  };
exports["levelOfType"] = function (x0) {
    return function (x1) {
      return x0;
    };
  };
exports["levelOfTerm"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x0;
      };
    };
  };
exports["0ℓ"] = z_jAgda_Agda_Primitive["lzero"];

