var agdaRTS = require("agda-rts");

exports["Nat"] = {};
exports["Nat"]["zero"] = function (x0) {
    return x0["zero"]();
  };
exports["Nat"]["suc"] = function (x0) {
    return function (x1) {
      return x1["suc"](x0);
    };
  };
exports["_+_"] = undefined;
exports["_-_"] = (agdaRTS.primNatMinus);
exports["_*_"] = undefined;
exports["_==_"] = undefined;
exports["_<_"] = undefined;
exports["div-helper"] = undefined;
exports["mod-helper"] = undefined;

