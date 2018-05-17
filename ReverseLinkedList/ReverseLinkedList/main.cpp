//
//  main.cpp
//  ReverseLinkedList
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};
ListNode* reverseList(ListNode* head) {
    ListNode *first = head;
    if (first == NULL) {
        return first;
    }
    ListNode *second = head->next;
    if (second == NULL) {
        return head;
    }
    ListNode *temp;
    first->next = NULL;
    while (second != NULL) {
        temp = second->next;
        second->next = first;
        first = second;
        second = temp;
    }
    return first;
}
ListNode* reverseList1(ListNode* head) {
    if (head == nullptr) {
        return head;
    }
    ListNode *pre = nullptr;
    ListNode *next = nullptr;
    while (head != nullptr) {
        next = head->next;
        head->next = pre;
        pre = head;
        head = next;
    }
    return pre;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
