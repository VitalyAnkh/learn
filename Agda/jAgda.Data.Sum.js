var agdaRTS = require("agda-rts");
var z_jAgda_Data_Maybe_Base = require("jAgda.Data.Maybe.Base");
var z_jAgda_Level = require("jAgda.Level");

exports["_NameId 6 4415882009551645059"] = {};
exports["_NameId 6 4415882009551645059"]["isInj₁"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4({
              "inj₁": function (x5) {
                return z_jAgda_Data_Maybe_Base["Maybe"]["just"](x5);
              },
              "inj₂": function (x5) {
                return z_jAgda_Data_Maybe_Base["Maybe"]["nothing"];
              }
            });
          };
        };
      };
    };
  };
exports["_NameId 6 4415882009551645059"]["isInj₂"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return x4({
              "inj₁": function (x5) {
                return z_jAgda_Data_Maybe_Base["Maybe"]["nothing"];
              },
              "inj₂": function (x5) {
                return z_jAgda_Data_Maybe_Base["Maybe"]["just"](x5);
              }
            });
          };
        };
      };
    };
  };
exports["_NameId 6 4415882009551645059"]["from-inj₁"] = function (x0) {
    return x0({
      "inj₁": function (x1) {
        return x1;
      },
      "inj₂": function (x1) {
        return z_jAgda_Level["Lift"]["lift"](agdaRTS.primIntegerFromString("0"));
      }
    });
  };
exports["_NameId 6 4415882009551645059"]["from-inj₂"] = function (x0) {
    return x0({
      "inj₁": function (x1) {
        return z_jAgda_Level["Lift"]["lift"](agdaRTS.primIntegerFromString("0"));
      },
      "inj₂": function (x1) {
        return x1;
      }
    });
  };
exports["_NameId 6 4415882009551645059"]["From-inj₁"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 6 4415882009551645059"]["From-inj₂"] = agdaRTS.primIntegerFromString("0");

