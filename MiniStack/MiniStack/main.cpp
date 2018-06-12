//
//  main.cpp
//  MiniStack
//
//  Created by Tim on 2018/5/31.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>
#include <stack>
using namespace std;

class MinStack {
public:
    stack<long> nums;
    long minNum;
    
    MinStack() {}
    
    void push(int x) {
        if (nums.empty()) {
            nums.push(0);
            minNum = x;
        } else {
            nums.push(x - minNum);
            if (x < minNum) {
                minNum = x;
            }
        }
    }
    
    void pop() {
        long temp = nums.top();
        if (temp < 0) {
            minNum -= temp;
        }
        nums.pop();
    }
    int top() {
        long temp = nums.top();
        if (temp > 0) {
            return minNum + temp;
        }
        return minNum;
    }
    int getMin() {
        return minNum;
    }
};



//class MinStack {
//public:
//    vector<int> nums;
//    vector<int> minNums;
//    MinStack(){
//
//    }
//    void push(int x) {
//        nums.push_back(x);
//        this->addNewNum(x);
//    }
//    void pop() {
//        if (!nums.empty()) {
//            int x = this->top();
//            this->deleteNum(x);
//            nums.pop_back();
//        }
//    }
//    int top() {
//        return nums[nums.size() - 1];
//    }
//    int getMin() {
//        int x = minNums[minNums.size() - 1];
//        return x;
//    }
//    void addNewNum(int x) {
//        vector<int>::iterator iter = minNums.begin();
//        while (iter != minNums.end()) {
//            if (*iter > x) {
//                iter += 1;
//            } else {
//                minNums.insert(iter, x);
//                break;
//            }
//        }
//        if (minNums.empty() || iter == minNums.end()) {
//            minNums.push_back(x);
//            return;
//        }
//
//    }
//    void deleteNum(int x) {
//        vector<int>::iterator iter = minNums.begin();
//        while (iter != minNums.end()) {
//            if (*iter == x) {
//                minNums.erase(iter);
//                break;
//            }
//        }
//    }
//};

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    MinStack *obj = new MinStack();
    obj->push(-2);
    obj->push(0);
    obj->push(-3);
    cout << obj->getMin() << endl;
    obj->pop();
    cout << obj->top() << endl;
    cout << obj->getMin() << endl;
    return 0;
}
