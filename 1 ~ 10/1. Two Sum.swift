//
//  ViewController.swift
//  LeetCodeTest
//
//  Created by yan on 2019/1/18.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import UIKit

class Solution {
    // Improve: scan the dict to check if there is already a target in the dict
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: [Int]] = [:]
        for (i, n) in nums.enumerated() {
            if dict[n] != nil {
                dict[n]!.append(i)
            } else {
                dict[n] = [i]
            }
        }

        for (i, n) in nums.enumerated() {
            if let j = dict[target - n]  {
                if target - n != n {
                    return [i, j[0]]
                } else {
                    if j.count > 1 {
                        return [j[0], j[1]]
                    }
                }
            }
        }
        
        return []
    }
}
