var agdaRTS = require("agda-rts");
var z_jAgda_Data_Sum_Base = require("jAgda.Data.Sum.Base");
var z_jAgda_Data_Unit_Properties = require("jAgda.Data.Unit.Properties");
var z_jAgda_Relation_Binary_PropositionalEquality = require("jAgda.Relation.Binary.PropositionalEquality");

exports["total"] = function (x0) {
    return function (x1) {
      return z_jAgda_Data_Sum_Base["_⊎_"]["inj₁"](agdaRTS.primIntegerFromString("0"));
    };
  };
exports["setoid"] = z_jAgda_Data_Unit_Properties["≡-setoid"];
exports["decSetoid"] = z_jAgda_Data_Unit_Properties["≡-decSetoid"];
exports["poset"] = z_jAgda_Data_Unit_Properties["≡-poset"];
exports["decTotalOrder"] = z_jAgda_Data_Unit_Properties["≡-decTotalOrder"];
exports["preorder"] = z_jAgda_Relation_Binary_PropositionalEquality["preorder"](agdaRTS.primIntegerFromString("0"))(agdaRTS.primIntegerFromString("0"));

