//
//  HHTwitterClient.h
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

#import "AFJSONRequestOperation.h"

typedef enum {
    TwitterClientResponseStatusSuccess,
    TwitterClientResponseStatusFail
} TwitterClientResponseStatus;

@interface HHTwitterClient : NSObject
{
    NSMutableArray *_tweets;
    ACAccount      *_account;
    ACAccountStore *_accountStore;
    ACAccountType  *_accountType;
}

- (void)requestPublicTimeline:(void (^)(TwitterClientResponseStatus status))callback;
- (int)tweetCount;

@end
