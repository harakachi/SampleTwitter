//
//  HHTwitterClient.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHTwitterClient.h"
#import "AFJSONRequestOperation.h"

@implementation HHTwitterClient

- (id)init
{
    if ([super init]) {
        _tweets = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)requestPublicTimeline
{
    for (int i=0; i < 20; i++) {
        [_tweets addObject:@"a"];
    }
}
- (int)tweetCount
{
    return [_tweets count];
}

@end
