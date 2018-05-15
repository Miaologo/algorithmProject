#include <iostream>
#include <vector.h>

using namespace std;

vector<string> fizzBuzz(int n);

int main(int argc, char *argv[]) {
	cout << fizzBuzz(15) << endl;
}

vector<string> fizzBuzz(int n) {
	vector<string> result;
	for (int i = 1; i<=n;i+=1) {
		if (i % 15 == 0) {
			result.push_back("FizzBuzz");
		} else if (i % 5 == 0) {
			result.push_back("Buzz");
		} else if (i % 3 ==) {
			result.push_back("Fizz");
		} else {
			result.push_back(to_string(i));
		}
	}
	return result;
}