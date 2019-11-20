//
//  Person.h
//  test_realm
//
//  Created by xie on 2019/11/10.
//  Copyright © 2019 xie. All rights reserved.
//

#ifndef Person_h
#define Person_h

#import <Foundation/Foundation.h>
#import <MJExtension/MJExtension.h>

@interface Person : NSObject
@property (nonatomic, strong) NSString *name;
@property(nonatomic, assign) NSInteger age;
@end

@interface Student : NSObject
@property (nonatomic, strong) Person *student;

@end
#endif /* Person_h */
