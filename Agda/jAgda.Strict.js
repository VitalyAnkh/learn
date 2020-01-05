var agdaRTS = require("agda-rts");
var z_jAgda_Agda_Builtin_Strict = require("jAgda.Agda.Builtin.Strict");

exports["_NameId 4 7279124440313491574"] = {};
exports["_NameId 4 7279124440313491574"]["force′"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return z_jAgda_Agda_Builtin_Strict["primForce"](x0)(x1)(agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));
        };
      };
    };
  };
exports["_NameId 4 7279124440313491574"]["seq"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return (agdaRTS.primSeq)(x4, x5);
            };
          };
        };
      };
    };
  };
exports["_NameId 4 7279124440313491574"]["force′-≡"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 4 7279124440313491574"]["seq-≡"] = agdaRTS.primIntegerFromString("0");

