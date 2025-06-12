#ifndef VEC3_H
#define VEC3_H

#include <cmath>
#include <iostream>

class Vec3 {
  public:
    double e[3];
    Vec3() : e{0, 0, 0} {}

    Vec3(double x, double y, double z) : e{x, y, z} {}

    double x() const { return e[0]; }
    double y() const { return e[1]; }
    double z() const { return e[2]; }

    Vec3 &operator+=(const Vec3 &v) {
        e[0] += v.e[0];
        e[1] += v.e[1];
        e[2] += v.e[2];
    }
};

using Point3 = Vec3;

#endif
