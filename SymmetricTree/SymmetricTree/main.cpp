//
//  main.cpp
//  SymmetricTree
//
//  Created by Tim on 2018/5/21.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>

using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x): val(x), left(NULL), right(NULL){}
};
bool isSymmetricValue(TreeNode *left, TreeNode *right);
bool isSymmetric(TreeNode *root) {

    vector<int> values;
    if (root == NULL) {
        return true;
    }
    return isSymmetricValue(root->left, root->right);
}

bool isSymmetricValue(TreeNode *left, TreeNode *right) {
    if (left == NULL && right == NULL) {
        return true;
    }
    if ((left == NULL && right != NULL) || (left != NULL && right == NULL)) {
        return false;
    }
    if (left->val != right->val) {
        return false;
    }
    return isSymmetricValue(left->left, right->right) && isSymmetricValue(left->right, right->left);
}

bool isSymmetricNode(TreeNode *left, TreeNode *right) {
    if (left == NULL && right == NULL) {
        return true;
    }
    if ((left == NULL && right != NULL) || (left != NULL && right == NULL)) {
        return false;
    }
    bool fristSub = left->left == NULL && right->right == NULL;
    bool secondSub = left->right == NULL && right->left == NULL;
    if (left->left != NULL && right->right != NULL) {
        fristSub = left->left->val == right->right->val;
    }
    if (left->right != NULL && right->left != NULL) {
        secondSub = left->right->val == right->left->val;
    }
    
    return fristSub && secondSub;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
