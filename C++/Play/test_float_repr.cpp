#include <climits>
float float2uint(float x){
    if (x > 2147483647.0f){
        return float(INT_MAX);
    }
}
