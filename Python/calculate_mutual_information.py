import math
from nltk import bigrams
import collections

a = """When the defendant and his lawyer walked into the court, some of the victim supporters turned their backs on him.  if we have more data then it will be more interesting because we have more chance to repeat bigrams. After some of the victim supporters turned their backs then a subset of the victim supporters turned around and left the court."""

a1 = a.split()
a2 = collections.Counter(a1)

a3 = collections.Counter(bigrams(a1))
a4 = sum([a2[x]for x in a2])
a5 = sum([a3[x]for x in a3])
a6 = {x: float(a2[x])/a4 for x in a2}  # word probabilities(w1 and w2)
a7 = {x: float(a3[x])/a5 for x in a3}  # joint probabilites (w1&w2)
u = {}
v = {}
for x in a6:
    k = {x: round(math.log((a7[b]/(a6[x] * a6[y])), 2), 4)
         for b in a7 for y in a6 if x and y in b}
    u[x] = k[x]
    k = {x: round(math.log((a7[b]/(a6[x] * a6[y])), 2), 4)
         for b in a7 for y in a6 if x in b and y in b}
    v[x] = k[x]

u['the']
v['the']
