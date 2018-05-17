//
//  main.cpp
//  DeleteNodeinALinkedList
//
//  Created by Tim on 2018/5/16.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>

using namespace std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

void deleteNode(ListNode* node) {
    ListNode *sentry = node;
    if (sentry->next) {
        sentry->val = sentry->next->val;
        sentry->next = sentry->next->next;
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
