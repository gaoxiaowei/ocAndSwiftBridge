//
//  swiftWrapper.swift
//  memAllocationTracker
//
//  Created by gaoxiaowei on 2018/7/11.
//  Copyright © 2018年 51vv. All rights reserved.
//

import UIKit

class swiftWrapper: NSObject {

    var address : String
    var gender: String
    
    init(address:String,gender:String){
        self.address = address
        self.gender = gender
    }
    
    func method() {
        print("message \(self.address + self.gender)")
    }
    
    func hello() {
        print("message \(self.address + self.gender)")
    }
    
}
