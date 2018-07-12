//
//  swiftWrapper2.swift
//  memAllocationTracker
//
//  Created by gaoxiaowei on 2018/7/11.
//  Copyright © 2018年 51vv. All rights reserved.
//

import UIKit

class swiftWrapper2: NSObject {
    var name : String
    var city: String
    
    init(name:String,city:String){
        self.name = name
        self.city = city
    }
    
    func method() {
        print("message \(self.name + self.city)")
    }
}
