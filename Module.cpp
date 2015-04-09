/******************
** Author: Chiba **
******************/
#include <cstdio>
#include <cstring>
#include <algorithm>
#include <vector>
#include <string>
#include <map>
#include <set>
#include <queue>
#include <cmath>
#include <bitset>
#include <iostream>
#include <cstdlib>
#include <cctype>
#include <stack>
#include <numeric>

using namespace std;

#define INIT(range, val) memset(range, val, sizeof(range))
#define mp make_pair
#define pb push_back
#define pf push_front
#define ls (rt << 1)
#define rs ((rt << 1) | 1)
#define MID(x, y) ((x + y) >> 1)
#define INF (1ll << 30)
#define lowBit(x) (x & -x)


inline void __CIN__() { ios::sync_with_stdio(false); cin.tie(0); }

typedef long long ll;
typedef unsigned long long ull;
typedef pair<int, int> pii;

typedef pair<int, pii> piii;

char buf;
inline int xint() { while (buf = getchar(), buf < '0' || buf > '9'); int x = buf - '0'; for (; buf = getchar(), buf >= '0' && buf <= '9'; x = x * 10 + buf - '0'); return x; }
inline ll xll() { while (buf = getchar(), buf < '0' || buf > '9'); ll x = buf - '0'; for (; buf = getchar(), buf >= '0' && buf <= '9'; x = x * 10 + buf - '0'); return x; }
inline string xstring() { while (buf = getchar(), buf == ' ' || buf == '\n'); string x = ""; for (x += buf; buf = getchar(), buf != ' ' && buf != '\n'; x += buf); return x; }
const ll MOD = 1000000009;
ll powmod(ll a, ll b) { ll res = 1; a %= MOD; for (; b; b >>= 1) { if (b & 1) res = res * a % MOD; a = a * a % MOD; } return res; }

int main() {
   
	return 0;
}
