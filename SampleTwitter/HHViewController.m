//
//  HHViewController.m
//  SampleTwitter
//
//  Created by 原田 勝信 on 2013/08/10.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "HHViewController.h"
#import "HHTwitterClient.h"
#import <Accounts/Accounts.h>

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    HHTwitterClient *tc = [[HHTwitterClient alloc] init];
    [tc buildAccountSetting];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
