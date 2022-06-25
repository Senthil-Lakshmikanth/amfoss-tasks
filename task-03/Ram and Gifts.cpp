#include <iostream>
using namespace std;

int gifts(int a, int b, int c, int d, int n){
    if(n == 1)
        return a;
    if(n == 2)
        return b;
    return c * gifts(a, b, c, d, n-2) + d*gifts(a, b, c, d, n-1);
}

int main() {
     int t;
     cin >> t;
     int x[t];
     for(int i = 0; i < t; i++){
         int a, b, c, d, n;
         cin >> a >> b >> c >> d >> n;
         x[i] = gifts(a, b, c, d, n);
     }
     for(int i = 0; i < t; i++)
        cout << x[i] << "\n";
}
