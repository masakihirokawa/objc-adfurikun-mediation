//
//  ViewController.m
//  AdfurikunMediationSample
//
//  Created by Dolice on 2014/03/02.
//  Copyright (c) 2014年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    // バナー表示
    [[DCAdMobBanner sharedManager] showAdBanner:self yPos:self.view.frame.size.height - 50];
}

@end
