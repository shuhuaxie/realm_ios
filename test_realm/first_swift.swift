//
//  first_swift.swift
//  test_realm
//
//  Created by xie on 2019/11/10.
//  Copyright © 2019 xie. All rights reserved.
//

import Foundation
@objc
open class first_swift : NSObject{
    override init() {
        super.init()
       print("init swift")
    }
    
    @objc open func sayHello(){
        print("from swift hello ")
    }
}
