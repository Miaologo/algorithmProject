//
//  main.cpp
//  ContainsDuplicate
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <set>
#include <vector>

using namespace std;

bool containsDuplicate(vector<int>& nums) {
    set<int> container;
    for (int i = 0; i < nums.size(); i += 1) {
        if (!container.insert(nums[i]).second) {
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
