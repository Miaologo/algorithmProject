//
//  main.cpp
//  Numberof1Bits
//
//  Created by Tim on 2018/5/23.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>

using namespace std;

int hammingWeight(uint32_t n) {
    uint32_t temp = n;
    int result = 0;
    for (int i = 1; i < 33; i += 1) {
        result += temp & 1;
        temp >>= 1;
    }
    return result;
}

int hammingWeight1(uint32_t n) {
    int result = 0;
    while (n != 0) {
        result += 1;
        n &= n-1;
    }
    return result;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    cout << hammingWeight(138) << endl;
    return 0;
}
