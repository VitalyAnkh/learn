var agdaRTS = require("agda-rts");

exports["⊤"] = {};
exports["⊤"]["tt"] = {
    "tt": function (x0) {
      return x0["tt"]();
    }
  };

