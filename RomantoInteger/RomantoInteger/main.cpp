//
//  main.cpp
//  RomantoInteger
//
//  Created by Tim on 2018/5/16.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <string.h>

using namespace std;
int toInt(char c);
int romanToInt(string s) {
    int result = 0;
    int sentry = 0;
    for (long index = s.size() - 1; index >= 0; index -= 1) {
        int temp = toInt(s[index]);
        if (temp >= sentry) {
            result += temp;
        } else {
            result -= temp;
        }
        sentry = temp;
    }
    return result;
}
int toInt(char c){
    switch (c) {
        case 'I':
            return 1;
        case 'V':
            return 5;
        case 'X':
            return 10;
        case 'L':
            return 50;
        case 'C':
            return 100;
        case 'D':
            return 500;
        case 'M':
            return 1000;
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    cout << romanToInt("LVIII") << endl;
    return 0;
}
