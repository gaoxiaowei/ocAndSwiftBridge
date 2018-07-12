//
//  AFWrapper.swift
//  memAllocationTracker
//
//  Created by gaoxiaowei on 2018/7/12.
//  Copyright © 2018年 51vv. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class AFWrapper: NSObject {
    public static func requestGETURL(strURL: String, success:@escaping (String) -> Void, failure:@escaping (Error) -> Void) {
        Alamofire.request(strURL).responseJSON { (responseObject) -> Void in
            
            print(responseObject)
            
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                let jsonString = resJson.rawString()
                success(jsonString!)
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
    
    public static func requestPOSTURL(strURL : String, params : [String : AnyObject]?, headers : [String : String]?, success:@escaping (String) -> Void, failure:@escaping (Error) -> Void){
        
        Alamofire.request(strURL, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            
            print(responseObject)
            
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                let jsonString = resJson.rawString()
                success(jsonString!)
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
    
    func hello() {
        print("message :hellp");
    }
     class func swiftStaticFunc(strURL: String,params : [String : AnyObject],headers : [String : String]?,failure:@escaping (Error) -> Void) {
     
    }
    
}
