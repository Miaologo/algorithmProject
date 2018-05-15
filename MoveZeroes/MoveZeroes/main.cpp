//
//  main.cpp
//  MoveZeroes
//
//  Created by Tim on 2018/5/14.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>
using namespace std;

void moveZeroes(vector<int>& nums) {
    int index1 = 0;
    int index2 = 0;
    unsigned long total = nums.size();
    while (index1 < total) {
        if (nums[index1] == 0) {
            index2 = index1 + 1;
            while (index2 < total) {
                if (nums[index2] != 0) {
                    nums[index1] = nums[index2];
                    nums[index2] = 0;
                    index2 += 1;
                    break;
                }
                index2 += 1;
            }
        }
        index1 += 1;
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";

    int a[2] = {0, 1};
    vector<int> aa = {1, 2};
//    a[0] = a[1];
//    a[1] = 0;
    moveZeroes(aa);
    cout << a[1] << endl;
    return 0;
}


