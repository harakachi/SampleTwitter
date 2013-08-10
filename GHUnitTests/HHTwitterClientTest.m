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

- (void)testRequestPublicTimeline
{
    HHTwitterClient *client = [[HHTwitterClient alloc] init];
    [client requestPublicTimeline];
    GHAssertEquals([client tweetCount], 20, nil);
}
@end