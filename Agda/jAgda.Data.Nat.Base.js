var agdaRTS = require("agda-rts");

exports["_≤_"] = {};
exports["_≤′_"] = {};
exports["_≤‴_"] = {};
exports["Ordering"] = {};
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
exports["pred"] = function (x0) {
    if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
      return agdaRTS.primIntegerFromString("0");
    } else {
      return (agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"));
    }
  };
exports["_+⋎_"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return x1;
      } else {
        return (agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), exports["_+⋎_"](x1)((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["_⊔_"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return x1;
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return x0;
      } else {
        return (agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), exports["_⊔_"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["_⊓_"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return agdaRTS.primIntegerFromString("0");
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return agdaRTS.primIntegerFromString("0");
      } else {
        return (agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), exports["_⊓_"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["⌊_/2⌋"] = function (x0) {
    if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
      return agdaRTS.primIntegerFromString("0");
    } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("1"), x0)) {
      return agdaRTS.primIntegerFromString("0");
    } else {
      return (agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), exports["⌊_/2⌋"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("2"))));
    }
  };
exports["⌈_/2⌉"] = function (x0) {
    return exports["⌊_/2⌋"]((agdaRTS.uprimIntegerPlus)(agdaRTS.primIntegerFromString("1"), x0));
  };
exports["_^_"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return agdaRTS.primIntegerFromString("1");
      } else {
        return (agdaRTS.uprimIntegerMultiply)(x0, exports["_^_"](x0)((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1"))));
      }
    };
  };
exports["∣_-_∣"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        return x1;
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return x0;
      } else {
        return exports["∣_-_∣"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")));
      }
    };
  };
exports["_≤′_"]["≤′-refl"] = function (x0) {
    return x0["≤′-refl"]();
  };
exports["_≤′_"]["≤′-step"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["≤′-step"](x0, x1);
      };
    };
  };
exports["_≤″_"] = {};
exports["_≤″_"]["k"] = function (x0) {
    return x0["less-than-or-equal"]({
      "less-than-or-equal": function (x1, x2) {
        return x1;
      }
    });
  };
exports["_≤″_"]["less-than-or-equal"] = function (x0) {
    return function (x1) {
      return {
        "k": x0,
        "less-than-or-equal": function (x2) {
          return x2["less-than-or-equal"](x0, x1);
        },
        "proof": x1
      };
    };
  };
exports["_≤‴_"]["≤‴-refl"] = function (x0) {
    return function (x1) {
      return x1["≤‴-refl"](x0);
    };
  };
exports["_≤‴_"]["≤‴-step"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return x3["≤‴-step"](x0, x1, x2);
        };
      };
    };
  };
exports["Ordering"]["less"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["less"](x0, x1);
      };
    };
  };
exports["Ordering"]["equal"] = function (x0) {
    return function (x1) {
      return x1["equal"](x0);
    };
  };
exports["Ordering"]["greater"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return x2["greater"](x0, x1);
      };
    };
  };
exports["compare"] = function (x0) {
    return function (x1) {
      if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x0)) {
        if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
          return exports["Ordering"]["equal"](agdaRTS.primIntegerFromString("0"));
        } else {
          return exports["Ordering"]["less"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")));
        }
      } else if ((agdaRTS.uprimIntegerEqual)(agdaRTS.primIntegerFromString("0"), x1)) {
        return exports["Ordering"]["greater"](agdaRTS.primIntegerFromString("0"))((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")));
      } else {
        return exports["compare"]((agdaRTS.uprimIntegerMinus)(x0, agdaRTS.primIntegerFromString("1")))((agdaRTS.uprimIntegerMinus)(x1, agdaRTS.primIntegerFromString("1")));
      }
    };
  };
exports["_<_"] = agdaRTS.primIntegerFromString("0");
exports["_≥_"] = agdaRTS.primIntegerFromString("0");
exports["_>_"] = agdaRTS.primIntegerFromString("0");
exports["_≰_"] = agdaRTS.primIntegerFromString("0");
exports["_≮_"] = agdaRTS.primIntegerFromString("0");
exports["_≱_"] = agdaRTS.primIntegerFromString("0");
exports["_≯_"] = agdaRTS.primIntegerFromString("0");
exports["_<′_"] = agdaRTS.primIntegerFromString("0");
exports["_≥′_"] = agdaRTS.primIntegerFromString("0");
exports["_>′_"] = agdaRTS.primIntegerFromString("0");
exports["_≤″_"]["proof"] = agdaRTS.primIntegerFromString("0");
exports["_<″_"] = agdaRTS.primIntegerFromString("0");
exports["_≥″_"] = agdaRTS.primIntegerFromString("0");
exports["_>″_"] = agdaRTS.primIntegerFromString("0");
exports["_<‴_"] = agdaRTS.primIntegerFromString("0");
exports["_≥‴_"] = agdaRTS.primIntegerFromString("0");
exports["_>‴_"] = agdaRTS.primIntegerFromString("0");

