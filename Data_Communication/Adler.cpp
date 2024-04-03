#include<bits/stdc++.h>
using namespace std;
uint32_t Adler_32(string data, int n)
{
uint32_t R = 0, L = 0, check_sum = 0;
for (int i = 0; i < n; i++) {
R = (R + data[i]) % 65521;
L = (L + R) % 65521;
}
check_sum = L * 65536 + R;
return check_sum;
}
int main()
{
string input = "BBH2101006F";
cout <<"Adler's checksum code for the input in hexadecimal is: ";
printf("%X\n", Adler_32(input, input.size()));
}
