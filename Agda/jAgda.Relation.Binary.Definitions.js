var agdaRTS = require("agda-rts");

exports["Tri"] = {};
exports["Tri"]["tri<"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3["tri<"](x0, x1, x2);
        };
      };
    };
  };
exports["Tri"]["tri≈"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3["tri≈"](x0, x1, x2);
        };
      };
    };
  };
exports["Tri"]["tri>"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3["tri>"](x0, x1, x2);
        };
      };
    };
  };
exports["NonEmpty"] = {};
exports["NonEmpty"]["x"] = function (x0) {
    return x0["nonEmpty"]({
      "nonEmpty": function (x1, x2, x3) {
        return x1;
      }
    });
  };
exports["NonEmpty"]["y"] = function (x0) {
    return x0["nonEmpty"]({
      "nonEmpty": function (x1, x2, x3) {
        return x2;
      }
    });
  };
exports["NonEmpty"]["proof"] = function (x0) {
    return x0["nonEmpty"]({
      "nonEmpty": function (x1, x2, x3) {
        return x3;
      }
    });
  };
exports["NonEmpty"]["nonEmpty"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return {
          "nonEmpty": function (x3) {
            return x3["nonEmpty"](x0, x1, x2);
          },
          "proof": x2,
          "x": x0,
          "y": x1
        };
      };
    };
  };
exports["Reflexive"] = agdaRTS.primIntegerFromString("0");
exports["Sym"] = agdaRTS.primIntegerFromString("0");
exports["Symmetric"] = agdaRTS.primIntegerFromString("0");
exports["Trans"] = agdaRTS.primIntegerFromString("0");
exports["TransFlip"] = agdaRTS.primIntegerFromString("0");
exports["Transitive"] = agdaRTS.primIntegerFromString("0");
exports["Antisym"] = agdaRTS.primIntegerFromString("0");
exports["Antisymmetric"] = agdaRTS.primIntegerFromString("0");
exports["Irreflexive"] = agdaRTS.primIntegerFromString("0");
exports["Asymmetric"] = agdaRTS.primIntegerFromString("0");
exports["Connex"] = agdaRTS.primIntegerFromString("0");
exports["Total"] = agdaRTS.primIntegerFromString("0");
exports["Trichotomous"] = agdaRTS.primIntegerFromString("0");
exports["_NameId 176 5359185163178559078"] = {};
exports["_NameId 176 5359185163178559078"]["_>_"] = agdaRTS.primIntegerFromString("0");
exports["Max"] = agdaRTS.primIntegerFromString("0");
exports["Maximum"] = agdaRTS.primIntegerFromString("0");
exports["Min"] = agdaRTS.primIntegerFromString("0");
exports["Minimum"] = agdaRTS.primIntegerFromString("0");
exports["_⟶_Respects_"] = agdaRTS.primIntegerFromString("0");
exports["_Respects_"] = agdaRTS.primIntegerFromString("0");
exports["_Respectsʳ_"] = agdaRTS.primIntegerFromString("0");
exports["_Respectsˡ_"] = agdaRTS.primIntegerFromString("0");
exports["_Respects₂_"] = agdaRTS.primIntegerFromString("0");
exports["Substitutive"] = agdaRTS.primIntegerFromString("0");
exports["Decidable"] = agdaRTS.primIntegerFromString("0");
exports["WeaklyDecidable"] = agdaRTS.primIntegerFromString("0");
exports["Irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["Recomputable"] = agdaRTS.primIntegerFromString("0");
exports["Universal"] = agdaRTS.primIntegerFromString("0");
exports["Conn"] = agdaRTS.primIntegerFromString("0");

