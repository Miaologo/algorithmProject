#include <iostream>
#include <string.h>

using namespace std;
int titleToNumber(string s) {
	int result = 0;
	for (int i = 0;i < s.length();i+=1) {
		char x = s.at(i);
		result = result * 26 + int(x) - 64;
	}
	return result;		
}

int main(int argc, char *argv[]) {
	char a = 'A';
	char z = 'Z';
	cout << titleToNumber("AB") << endl;
	return 0;
}