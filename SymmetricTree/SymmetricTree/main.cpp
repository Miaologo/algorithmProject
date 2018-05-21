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

bool isSymmetricTree(TreeNode *root) {

    vector<int> values;
    vector<TreeNode *> nodes;
    if (root == NULL) {
        return true;
    }
    return isSymmetricTree(root->left) && isSymmetricTree(root->right);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
