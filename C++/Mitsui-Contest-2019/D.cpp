#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (n); ++i)

int main() {
  string t;
  int x = 825;
  rep(j, 3) {
    t += '0' + x % 10;
    x /= 10;
  }
  cout << t << endl;
  return 0;
}


// xの値: tの数列

// 0: 000
// 1: 100
// 2: 200

// 10: 010
// 11: 110
// 12: 210

// 20: 020
// 100: 001
// 560: 065
// 825: 528