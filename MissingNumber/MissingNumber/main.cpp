//
//  main.cpp
//  MissingNumber
//
//  Created by Tim on 2018/5/17.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <set>
#include <vector>
using namespace std;

int missingNumber(vector<int> &nums){
    set<int> numbers(nums.begin(), nums.end());
    int num = 0;
    while (1) {
        if (numbers.insert(num).second) {
            return num;
            break;
        }
        num += 1;
    }
    return 0;
}
int missingNumber1(vector<int> &nums){
    int sum = 0;
    for (int i = 0; i < nums.size(); i += 1) {
        sum += nums[i];
    }
    int count = int(nums.size());
    return (count + 1)/2 * count - sum;
}

int missingNumber2(vector<int>& nums) {
    int num = nums.size();
    
    for(int i =0;i<nums.size();i++){
        num^=i;
        num^=nums[i];
    }
    return num;
}

int missingNumber3(vector<int>& nums) {
    int num = nums.size();
    for(int i = 0; i<nums.size();i++){
        num^=i;
        num^=nums[i];
    }
    
    return num;
}

//class Solution {
//    func missingNumber(_ nums: [Int]) -> Int {
//        var nums = nums
//        var index = -1
//        for i in 0..<nums.count {
//            while nums[i] != i {
//                if nums[i] == nums.count {
//                    index = i
//                    break
//                } else {
//                    nums.swapAt(i, nums[i])
//                }
//            }
//        }
//        return index == -1 ? nums.count : index
//    }
//}

class Solution {
public:
    int missingNumber(vector<int>& nums) {
        int size = int(nums.size());
        int result = size;
        // 先把0 和n处理一下
        int ocurr = 0;
        int count = 0;
        for(int i = 0; i < size; i++){
            if(nums[i] == 0 || nums[i] == size)
            {
                ocurr = nums[i];
                nums[i] = 0;
                count++;
            }
        }
        if(count == 1)
        {
            if(ocurr == 0)
                return size;
            else
                return 0;
            
        }
        for(int i = 0; i < size; i++){
            if(nums[i] % size < size )
                nums[nums[i] % size] += size;
        }
        for(int i = 0; i < size; i++){
            if(nums[i] < size)
                return i;
        }
        return result;
        
    }
};

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
