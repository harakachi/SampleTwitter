//
//  HHTweetTest.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHTweetTest.h"
#import "HHTweet.h"

@implementation HHTweetTest

- (void)testMakeInstance
{
    HHTweet *tw = [[HHTweet alloc] init];
    GHAssertNotNil(tw, nil);
}

@end
