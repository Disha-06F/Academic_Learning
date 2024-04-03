#include<bits/stdc++.h>
using namespace std;
uint16_t Fletcher_16(string data, int n)
{
uint16_t R = 0, L = 0, check_sum = 0;
for (int i = 0; i < n; i++) {
R = (R + data[i]) % 256;
L = (L + R) % 256;
}
check_sum = L * 256 + R;
return check_sum;
}
int main()
{
string input = "BBH2101006F";
cout << "Fletcher's checksum code for the input in hexadecimal is: ";
printf("%X\n", Fletcher_16(input, input.size()));
}
