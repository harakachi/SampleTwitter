//
//  HHTwitterClient.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHTwitterClient.h"

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
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline.json?count=20"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request
                                                                                        success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON){
                                                                                            
                                                                                            NSLog(@"%@", JSON);
                                                                                            callback(TwitterClientResponseStatusSuccess);
                                                                                            
                                                                                        }
                                                                                        failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
                                                                                            
                                                                                            callback(TwitterClientResponseStatusFail);
                                                                                        }];
    //NSOperationQueue *queue = [[[NSOperationQueue alloc] init] autorelease];
    //[queue addOperation:operation];
    
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
