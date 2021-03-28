#include <bits/stdc++.h>

int ri() {
  int n;
  scanf("%d", &n);
  return n;
}

int main() {
  int h = ri();
  int w = ri();
  int x = ri() - 1;
  int y = ri() - 1;
  std::string s[h];
  for (auto &i : s) std::cin >> i;

  std::cout << s[h] << std::endl;
}