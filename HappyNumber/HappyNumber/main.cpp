//
//  main.cpp
//  HappyNumber
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <set>

using namespace std;

bool isHappy(int n) {
    set<int> result;
    int num = n;
    while (result.insert(num).second) {
        int temp = num;
        num = 0;
        while (temp!=0) {
            num += (temp % 10) * (temp % 10);
            temp = temp/10;
        }
        if (num == 1) {
            return true;
        }
    }
    return false;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
