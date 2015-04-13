#include "Solution0.h"
#include <unordered_map>

Solution0::Solution0()
{

}

Solution0::~Solution0()
{

}

vector<int> Solution0::twoSum(vector<int> &numbers, int target)
{
    vector<int> result;
//    bool done = false;
//
//    for (unsigned int i = 0; i < numbers.size(); i++)
//    {
//        for (unsigned int j = i + 1; j < numbers.size(); j++)
//        {
//            int sum = numbers[i] + numbers[j];
//            if (sum == target)
//            {
//                result.push_back(i+1);
//                result.push_back(j+1);
//                done = true;
//                break;
//            }
//        }
//
//        if (done)
//        {
//            break;
//        }
//    }

    unordered_multimap<int, int>numbersMap;
    for (unsigned int i = 0; i < numbers.size(); i++)
    {
        numbersMap.insert(unordered_multimap<int, int>::value_type(numbers[i], i+1));
    }

    bool done = false;
    for (unsigned int i = 0; i < numbers.size(); i++)
    {
        int other = target - numbers[i];
        auto its = numbersMap.equal_range(other);
        for (auto it = its.first; it != its.second; ++it)
        {
            if (it->second == i+1)
            {
                continue;
            }
            else
            {
                result.push_back(i+1);
                result.push_back(it->second);
                done = true;
                break;
            }
        }

        if (done)
        {
            break;
        }
    }

    if (result.empty())
    {
        result.push_back(0);
        result.push_back(0);
    }

    return result;
}
