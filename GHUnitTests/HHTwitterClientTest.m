//
//  HHTwitterClientTest.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHTwitterClientTest.h"
#import "HHTwitterClient.h"

@implementation HHTwitterClientTest

- (void)testExample
{
    HHTwitterClient *t = [[HHTwitterClient alloc] init];
    GHAssertNotNil(t, nil);
}

@end