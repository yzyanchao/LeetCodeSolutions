//
//  ViewController.swift
//  LeetCodeTest
//
//  Created by yan on 2019/1/18.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import UIKit

class Solution {
    // A better solution is only reverse a half of the input number, and compare the reversed part with the remaining part of x
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        
        if x >= 0 && x < 10 {
            return true
        }
        
        var reversed = 0
        var quotient = x
        let max: Int = Int(Int32.max)
        
        while quotient > 0 {
            let remainder: Int = quotient % 10
            if reversed > (max - remainder) / 10 {
                return false
            }
            
            reversed *= 10
            reversed += remainder
            quotient = quotient / 10
        }
        
        return reversed == x
    }
}
