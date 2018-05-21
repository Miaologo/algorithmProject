//
//  main.cpp
//  PowerofThree
//
//  Created by Tim on 2018/5/18.
//  Copyright © 2018年 LM. All rights reserved.
//

#include <iostream>
#include <math.h>

using namespace std;

//最后还有一种巧妙的方法，利用对数的换底公式来做，高中学过的换底公式为logab = logcb / logca，那么如果n是3的倍数，则log3n一定是整数，我们利用换底公式可以写为log3n = log10n / log103，注意这里一定要用10为底数，不能用自然数或者2为底数，否则当n=243时会出错，原因请看这个帖子。现在问题就变成了判断log10n / log103是否为整数，在c++中判断数字a是否为整数，我们可以用 a - int(a) == 0 来判断，参见代码如下：

bool isPowerOfThree(int n) {
    
    if (n < 0) {
        return false;
    }
    float temp = log10(n)/log10(3);
    if (abs(int(temp) - temp) < 1e-10) {
        return true;
    }
    return false;
    
}

bool isPowerOfThree1(int n) {
    double temp = log10(n) / log10(3);
    return !(temp - (int)temp);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    cout << isPowerOfThree(1162261468) << endl;
    return 0;
}
