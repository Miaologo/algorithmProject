#include <iostream>
#include <string.h>

using namespace std;

string reverseString(string s);

int main(int argc, char *argv[]) {
	
	string aa = "hello";
	aa = reverseString(aa);
	cout << aa << endl;
	return 0;
}

string reverseString(string s) {
	char *first = &s[0];
	char *end = first + s.size() - 1;
	while (first < end) {
		char temp = *first;
		*first = *end;
		*end = temp;
		first += 1;
		end -= 1;
	}
	return s;
}