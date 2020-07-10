
#include <iostream>
using namespace std;
#include "help.hpp"
int main()
{        
    int sum = 0;
    for(int i = 0;i < 10;i++)
    {
        sum += i;
        cout << "sum = " << sum <<endl;
    }
    print();
    return 0;
}
