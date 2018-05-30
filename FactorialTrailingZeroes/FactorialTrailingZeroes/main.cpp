//
//  main.cpp
//  FactorialTrailingZeroes
//
//  Created by Tim on 2018/5/29.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>

using namespace std;

int trailingZeroes(int n) {
    int result = 0;
    while (n > 0) {
        result += n / 5;
        n = n /5;
    }
    return result;
    
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
