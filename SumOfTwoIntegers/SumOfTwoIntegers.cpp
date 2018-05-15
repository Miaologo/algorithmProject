#include <iostream>

using namespace std;

int getSum(int a, int b) {
	int temp = 0;
	while (b != 0) {
		temp = a & b;
		a = a ^ b;
		b = temp << 1;
	}
	return a;
};

int main(int argc, char *argv[]) {
	cout << getSum(1, 2) << endl;
	return 0;	
}