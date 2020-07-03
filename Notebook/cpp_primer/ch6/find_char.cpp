#include <iostream>
#include <string>
using namespace std;

// 返回首次遇到c的index，以及c出现的次数
std::string::size_type find_char(const string &s, char c, string::size_type &occurrences)
{
    auto result = s.size();
    occurrences = 0;
    for (decltype(result) i = 0; i < s.size(); ++i)
    {
        if (s[i] == c)
        {
            if (result == s.size())
            {
                result = i; // result == s.size()，表明是首次遇到c
            }
            ++occurrences;
        }
    }
    return result;
}
int main()
{
    string s;
    std::cout << "Enter two a string: " << std::endl;
    std::cin >> s;
    char c;
    std::cin >> c;
    string::size_type count = 0;
    std::cout << find_char(s, c, count) << " " << count << std::endl;
    return 0;
}