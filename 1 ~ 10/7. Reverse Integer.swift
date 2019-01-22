//
//  ViewController.swift
//  LeetCodeTest
//
//  Created by yan on 2019/1/18.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import UIKit

class Solution {
    // Improve: The way to check overflow is tricky, the better way is to check overflow before answer * 10
    func reverse(_ x: Int) -> Int {
        let flag = (x >= 0) ? 1 : -1
        let min: Int = Int(Int32.min)
        let max: Int = Int(Int32.max)
        
        var answer = 0
        var quotient = x * flag
        
        while quotient > 0 {
            answer *= 10
            answer += quotient % 10
            quotient /= 10
            
            if flag == 1 && answer > max {
                return 0
            } else if flag == -1 && -answer < min {
                return 0
            }
        }
        
        answer *= flag
        
        return answer
    }
}
