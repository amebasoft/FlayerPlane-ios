//
//  WebData.swift
//  FlyerPlane
//
//  Created by Vishal Gupta on 29/02/16.
//  Copyright © 2016 Vishal Gupta. All rights reserved.
//

import UIKit

class WebData: NSObject {
    
    class var sharedInstance: WebData {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: WebData? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = WebData()
        }
        return Static.instance!
    }
}
