var agdaRTS = require("agda-rts");

exports["_≤_"] = {};
exports["_≤_"]["record"] = {
    "record": function (x0) {
      return x0["record"]();
    }
  };

