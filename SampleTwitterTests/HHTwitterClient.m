//
//  HHTwitterClient.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHTwitterClient.h"
#import "HHTweet.h"

@implementation HHTwitterClient

- (id)init
{
    if ([super init]) {
        _tweets = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)requestPublicTimeline:(void (^)(TwitterClientResponseStatus status))callback
{
    NSURL        *url =
        [NSURL URLWithString:@"http://labs.unfindable.net/public_timeline/json.php"];
    NSURLRequest *request =
        [NSURLRequest requestWithURL:url];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request
                success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON){
                    [_tweets removeAllObjects];
                    for (id tweetJSON in JSON) {
                        [_tweets addObject:[HHTweet tweetWithJSON:tweetJSON]];
                        if([_tweets count] == 20){ break; }
                    }
                    callback(TwitterClientResponseStatusSuccess);
                }
                failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
                    callback(TwitterClientResponseStatusFail);
                }];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [queue addOperation:operation];
    
}

- (int)tweetCount
{
    return [_tweets count];
}

@end
