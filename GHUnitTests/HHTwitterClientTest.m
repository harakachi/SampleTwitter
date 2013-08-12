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

- (void)testMakeInstance
{
    HHTwitterClient *client = [[HHTwitterClient alloc] init];
    GHAssertNotNil(client, nil);
}
- (void)testBuildSetting
{
    HHTwitterClient *client = [[HHTwitterClient alloc] init];
    [client buildAccountSetting];
    // アカウント取得のタイミングが非同期なので、このAssert時点ではアカウントが取得できない
    GHAssertNotNil([client getAccount], nil);
}
- (void)testAccountsCount
{
    HHTwitterClient *client = [[HHTwitterClient alloc] init];
    GHAssertTrue(([client accountsCount] > 0), nil);
}
/*
- (void)testRequestPublicTimeline
{
    HHTwitterClient *client = [[HHTwitterClient alloc] init];
    __block BOOL calledBack = NO;
    
    [client requestPublicTimeline:^(TwitterClientResponseStatus status) {
        calledBack = YES;
    }];
    
    NSDate *loopUntil = [NSDate dateWithTimeIntervalSinceNow:10];
    while (calledBack == NO && [loopUntil timeIntervalSinceNow] > 0) {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode
                                 beforeDate:loopUntil];
    }
    GHAssertEquals([client tweetCount], 20, nil);
}
 */
@end