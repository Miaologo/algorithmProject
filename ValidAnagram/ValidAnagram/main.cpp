//
//  main.cpp
//  ValidAnagram
//
//  Created by Tim on 2018/5/16.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <string.h>
#include <map>

using namespace std;

bool isAnagram(string s, string t) {
    map<char, int> maps;
    map<char, int> mapt;
    if (s.size() != t.size()) {
        return false;
    }
    for (int i = 0; i < s.size(); i += 1) {
        maps[s[i]] += 1;
    }
    for (int i = 0; i < t.size(); i += 1) {
        mapt[t[i]] += 1;
    }
    map<char, int>::iterator iter;
    for (iter = mapt.begin(); iter != mapt.end(); iter ++) {
        cout<<iter->first<<' '<<iter->second<<endl;
        cout<<maps[iter->first]<<endl;
        if (iter->second != maps[iter->first]) {
            return false;
        }
        maps.erase(iter->first);
    }
    if (!maps.empty()) {
        return false;
    }
    return true;
}
bool isAnagram1(string s, string t) {
    map<char, int> mapt;
    if (s.size() != t.size()) {
        return false;
    }
    for (int i = 0; i < t.size(); i += 1) {
        mapt[t[i]] += 1;
    }
    for (int i = 0; i < s.size(); i += 1) {
        mapt[s[i]] -= 1;
    }
    map<char, int>::iterator iter;
    for (iter = mapt.begin(); iter != mapt.end(); iter ++) {
        cout<<iter->first<<' '<<iter->second<<endl;
        if (iter->second != 0) {
            return false;
        }
    }
    return true;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    
    isAnagram1("aab", "aca");
    return 0;
}
