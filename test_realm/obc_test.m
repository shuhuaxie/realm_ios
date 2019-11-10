//
//  obc_test.m
//  test_realm
//
//  Created by xie on 2019/11/10.
//  Copyright © 2019 xie. All rights reserved.
//

#import "test_realm-Swift.h"
#import <Foundation/Foundation.h>
#import "obc_test.h"

@implementation obc_test

-(void)sayHello{
    NSLog(@"Hello from oc");
    first_swift *s = [[first_swift alloc] init];
    [s sayHello];
}

@end
