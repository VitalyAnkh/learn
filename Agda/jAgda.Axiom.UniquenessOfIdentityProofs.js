var agdaRTS = require("agda-rts");

exports["UIP"] = agdaRTS.primIntegerFromString("0");
exports["Constant⇒UIP"] = {};
exports["Constant⇒UIP"]["≡-canonical"] = agdaRTS.primIntegerFromString("0");
exports["Constant⇒UIP"]["≡-irrelevant"] = agdaRTS.primIntegerFromString("0");
exports["Decidable⇒UIP"] = {};
exports["Decidable⇒UIP"]["≡-normalise"] = agdaRTS.primIntegerFromString("0");
exports["Decidable⇒UIP"]["≡-normalise-constant"] = agdaRTS.primIntegerFromString("0");
exports["Decidable⇒UIP"]["≡-irrelevant"] = agdaRTS.primIntegerFromString("0");

