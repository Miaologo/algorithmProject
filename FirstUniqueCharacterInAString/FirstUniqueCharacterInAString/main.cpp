//
//  main.cpp
//  FirstUniqueCharacterInAString
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <string.h>
#include <set>
#include <map>
#include <vector>
using namespace std;

int firstUniqChar(string s) {
    vector<int> counts(26, 0);
    vector<pair<char, int>> result;
    for (int i = 0; i < s.size(); i += 1) {
        int index = s[i]-'a';
        if (counts[index] == 0) {
            result.push_back({s[i], i});
        }
        counts[index] += 1;
    }
    for (int i = 0; i < result.size(); i += 1) {
        int index = result[i].first - 'a';
        if (counts[index] == 1) {
            return result[i].second;
        }
    }
    return -1;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    string s = "loveleetcode";
    cout << firstUniqChar(s) << endl;
    return 0;
}
