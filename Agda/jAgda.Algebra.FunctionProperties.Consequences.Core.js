var agdaRTS = require("agda-rts");

exports["sel⇒idem"] = function (x0) {
    return function (x1) {
      return function (x2) {
        return function (x3) {
          return function (x4) {
            return function (x5) {
              return function (x6) {
                return x5(x6)(x6)({
                  "inj₁": function (x7) {
                    return x7;
                  },
                  "inj₂": function (x7) {
                    return x7;
                  }
                });
              };
            };
          };
        };
      };
    };
  };

