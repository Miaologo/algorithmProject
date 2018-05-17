//
//  main.cpp
//  ConvertSortedArraytoBinarySearchTree
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
TreeNode *build(vector<int> &nums);
TreeNode* sortedArrayToBST(vector<int>& nums) {
    return build(nums);
}

TreeNode *build(vector<int> &nums){
    TreeNode *node = new TreeNode(0);
    if (nums.size() == 1) {
        node->val = nums[0];
        return node;
    }
    if (nums.size() == 0) {
        return nullptr;
    }
    int mid = int(nums.size())/2;
    vector<int>::iterator iter = nums.begin();
    vector<int> left(iter, iter+mid);
    vector<int> right(iter+mid+1, nums.end());
    node->left = build(left);
    node->right = build(right);
    return node;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    vector<int> nums = {-10, -3, 0, 2, 5};
    TreeNode *node = sortedArrayToBST(nums);
    cout << node->val << endl;
    return 0;
}
