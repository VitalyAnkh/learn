int main() {
    int n = 1;
    auto h = [&]<int>() { n = 0; };
    auto m = [h]<int j>() { h.template operator()<j>(); };
    m.template operator()<0>();
    return n;
}
