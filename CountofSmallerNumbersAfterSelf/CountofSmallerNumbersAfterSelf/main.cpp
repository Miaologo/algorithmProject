//
//  main.cpp
//  CountofSmallerNumbersAfterSelf
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>

using namespace std;

vector<int> countSmaller(vector<int>& nums) {
    vector<int> result(nums.size(), 0);
    vector<int> orderNums;
    for (int i = int(nums.size() - 2); i >= 0; i-=1) {
        int count = 0;
        for (int j = i+1; j < nums.size(); j+=1) {
            if (nums[j] < nums[i]) {
                count += 1;
            }
        }
        result[i] = count;
    }
    return result;
}

vector<int> countSmaller3(vector<int>& nums) {
    vector<int> result(nums.size(), 0);
    vector<int> orderNums;
    for (int i = int(nums.size() - 1); i >= 0; i-=1) {
        int count = 0;
        vector<int>::iterator iter = orderNums.begin();
        for (; iter != orderNums.end(); iter+=1) {
            if (*iter >= nums[i]) {
                break;
            }
            count += 1;
        }
        orderNums.insert(iter, nums[i]);
        result[i] = count;
    }
    return result;
}
vector<int> countSmaller1(vector<int>& nums) {
    vector<int> result(nums.size(), 0);
    vector<int> orderNums;
    for (int i = int(nums.size() - 1); i >= 0; i-=1) {
        int count = int(orderNums.size());
        for ( ; count > 0; ) {
            if (orderNums[count - 1] < nums[i]) {
                break;
            }
            count -= 1;
        }
        vector<int>::iterator iter = orderNums.begin() + count;
        orderNums.insert(iter, nums[i]);
        result[i] = count;
    }
    for (int i = 0; i < orderNums.size(); i+=1) {
        cout << orderNums[i] << endl;
    }
    return result;
}
// Binary Search Tree
class Solution {
public:
    struct Node {
        int val, smaller;
        Node *left, *right;
        Node(int v, int s) : val(v), smaller(s), left(NULL), right(NULL) {}
    };
    int insert(Node *&root, int v) {
        if (!root) return (root = new Node(v, 0)), 0;
        if (root->val > v) return root->smaller++, insert(root->left, v);
        else return insert(root->right, v) + root->smaller + (root->val < v ? 1 : 0);
    }
    vector<int> countSmaller(vector<int>& nums) {
        vector<int> res(nums.size());
        Node *root = NULL;
        for (int i = nums.size() - 1; i >= 0; --i) {
            res[i] = insert(root, nums[i]);
        }
        return res;
    }
};

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    vector<int> a = {5, 2, 6, 1};
    vector<int> aa = countSmaller1(a);
    return 0;
}
