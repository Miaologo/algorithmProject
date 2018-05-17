#include <iostream>
#include <vector.h>

using namespace std;

// 摩尔投票法 Moore Voting的首要前提是必须有众数存在，通过众数与其他数个数相抵消，得到最后的个数大于0的就是众数


int majorityElement(vector<int>& nums) {
	int count = 1
	int result = nums[0]
	for (int index = 1;index < nums.size();index += 1) {
		if (result == nums[index]) {
			count += 1;
		} else {
			count -= 1;
			if (count == 0) {
				result = nums[index];
				count = 1;
			}
		}
	}
	return result;
}

// 二进制位统计法
// 统计每个二进制位上0和1的个数，0的个数多就为0，否则为1，最后得到一个31位的二进制数

int main(int argc, char *argv[]) {
	
	return 0;
}