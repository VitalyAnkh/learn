solve maximize 6*f + 10*l + 8*z + 40*j;

int : budget = 10000;
constraint 13*f + 21*l + 17*z + 100*j <= budget;

var 0..1000 : f;
var 0..400 : l;
var 0..500 : z;
var 0..150 : j;

output ["f = \(f), l = \(l), z = \(z), j = \(j) \n"];
