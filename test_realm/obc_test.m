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
#import <MJExtension/MJExtension.h>

@implementation obc_test

-(void)sayHello{
    NSLog(@"Hello from oc");
    first_swift *s = [[first_swift alloc] init];
    [s sayHello];
}

-(void)getData{
    NSLog(@"getData");
    
    NSDictionary *dic = @{@"name":@"revon", @"age":@"19"};
    Person *p1 = [Person mj_objectWithKeyValues:dic];
    NSLog(@"getData resp: = %ld",p1.age);
    NSLog(@"getData resp: = %@",p1.name);
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *urlStrig = @"https://gist.githubusercontent.com/shuhuaxie/6dc2acac00f4770a4093/raw/d5dbfe8f08ae24eceefad6ee0c53e8e2d9647b3b/gistfile1.txt";
        urlStrig = [urlStrig stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        NSURL *url = [NSURL URLWithString:urlStrig];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *str1 = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"getData resp: = %@",str1);
        
        NSDictionary *dic= [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        Student *result =[Student mj_objectWithKeyValues:dic];
        
        NSLog(@"getData resp2 student : = %@",result.student);
        NSLog(@"getData resp2: = %ld",result.student.age);
        NSLog(@"getData resp2: = %@",result.student.name);
    });
    NSLog(@"getData end");
}



@end
