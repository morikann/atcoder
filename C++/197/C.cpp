#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for (int i = 0; i < (n); ++i)

int main() {
  int N = 3;
  vector<int> S;
  vector<int> a(N);
  for (int i = 0; i < N; ++i) {
    S.push_back(i);
  }
  int sum = 0;
  for(int i : S) cout << a[i];
}

// int main() {
//   int n;
//   cin >> n;
//   vector<int> a(n);
//   rep(i, n) cin >> a[i];
//   int ans = 1<<30;
//   rep(s, 1<<(n-1)) {
//     int now = 0;
//     int o = 0;
//     rep(i, n) {
//       o |= a[i];
//       if (s>>i&1) {
//         now ^= o;
//         o = 0;
//       }
//     }
//     now ^= o;
//     ans = min(ans, now);
//   }
//   cout << ans << endl;
//   return 0;
// }