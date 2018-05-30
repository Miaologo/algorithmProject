//
//  main.cpp
//  IntersectionofTwoArraysII
//
//  Created by Tim on 2018/5/24.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>
#include <map>

using namespace std;

vector<int> intersect(vector<int> &nums1, vector<int> &nums2) {
    vector<int> result;
    map<int, int> num2Map;
    for (int i = 0; i < nums2.size(); i += 1) {
        if (num2Map.find(nums2[i]) != num2Map.end()) {
            num2Map[nums2[i]] += 1;
        } else {
            num2Map[nums2[i]] = 1;
        }
    }
    for (int i = 0; i < nums1.size();  i += 1) {
        if (num2Map[nums1[i]] > 0) {
            num2Map[nums1[i]] -= 1;
            result.push_back(nums1[i]);
        }
    }
    return result;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
