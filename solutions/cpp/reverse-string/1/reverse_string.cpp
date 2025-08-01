#include "reverse_string.h"
using namespace std;
namespace reverse_string {
    string reverse_string (string s) {
        string nova_str = "";
        for (int i = s.length()-1; i>=0; i--) {
            nova_str = nova_str + s[i];
        }
        return nova_str;
    }
}  // namespace reverse_string
