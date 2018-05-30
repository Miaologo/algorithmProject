//
//  main.cpp
//  HouseRobber
//
//  Created by Tim on 2018/5/29.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <vector>

using namespace std;

int rob(vector<int> &nums) {
    int robMax = 0;
    int skipMax = 0;
    int a = 0, b = 0;
    for (int i = 0; i < nums.size(); i += 1) {
        
//        根据 动态规划4要素 进行分析：
//
//        类型：序列型动态规划
//        1.状态 State
//        f[i] 表示前i个房子中,偷到的最大价值
//        2.方程 Function
//        f[i] = max(f[i-1], f[i-2] + A[i-1]);
//        3.初始化 Intialization
//        f[0] = 0;
//        f[1] = A[0];
//        4.答案 Answer
//        f[n]
//        状态转移方程将f[i]分了两种情况（这里定义i是第i个房子，因此数组下标要减1，使用A[i-1]）：
//        (1)去A[i-1]，那么f[i] = f[i-2] + A[i-1]
//        (2)不去A[i-1]，那么f[i] = f[i-1] 两者取最大值就是f[i]
        int c = max(a + nums[i], b);
        a = b;
        b = c;
        
        // solution 2
        if (i % 2 == 0) {
            a = max(a + nums[i], b);
        } else {
            b = max(a, b + nums[i]);
        }
        // solution 3
        int m = a, n = b;
        a = b + nums[i];
        b = max(m, n);
    }
    return max(a, b);
}

int rob1(vector<int>& nums) {
    int robMax = 0, skipMax = 0;
    for (int n : nums) {
        int rr = robMax, ss = skipMax;
        robMax = ss + n;   // rob this house
        skipMax = max(rr, ss); // skip this house
    }
    return max(robMax, skipMax);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
