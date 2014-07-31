//
//  ueViewController.m
//  UrbnEarth
//
//  Created by Vandersexxx on 7/30/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ueViewController.h"

@interface ueViewController ()

@end


@implementation ueViewController
@synthesize backgroundview, opblack, logo, contentHolder, lorr, emailHolder, passwordHolder, loginBtn;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    backgroundview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    backgroundview.image = [UIImage imageNamed:(@"login2.png")];
    backgroundview.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:backgroundview];
    
    opblack = [[UIView alloc] initWithFrame:CGRectMake(0, 0, backgroundview.frame.size.width, backgroundview.frame.size.height)];
    opblack.backgroundColor = [UIColor blackColor];
    opblack.alpha = 0.45;
    [backgroundview addSubview:opblack];
    
    contentHolder = [[UIView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height-310)/2, self.view.frame.size.width, 310)];
    [self.view addSubview:contentHolder];
    
    logo = [[UIImageView alloc] initWithFrame:CGRectMake((contentHolder.frame.size.width-300)/2, 0, 300, 82)];
    logo.image = [UIImage imageNamed:(@"UrbnEarth-Hi-Res-Logo.png")];
    logo.contentMode = UIViewContentModeScaleAspectFill;
    [contentHolder addSubview:logo];
    
    lorr = [[UILabel alloc] initWithFrame:CGRectMake((contentHolder.frame.size.width-250)/2, 100, 250, 40)];
    [lorr setFont:[UIFont boldSystemFontOfSize:14]];
    //[label setTextAlignment:UITextAlignmentCenter];
    //[lorr setBackgroundColor:[UIColor clearColor]];
    [lorr setTextColor:[UIColor whiteColor]];
    [lorr setText:@"Login or Register"];
    [contentHolder addSubview:lorr];
    
    emailHolder = [[UIView alloc] initWithFrame:CGRectMake((contentHolder.frame.size.width-250)/2, 140, 250, 40)];
    emailHolder.layer.borderColor = [UIColor whiteColor].CGColor;
    emailHolder.layer.borderWidth = 1.0f;
    emailHolder.layer.cornerRadius = 5.0f;
    [contentHolder addSubview:emailHolder];
    
    passwordHolder = [[UIView alloc] initWithFrame:CGRectMake((contentHolder.frame.size.width-250)/2, 200, 250, 40)];
    passwordHolder.layer.borderColor = [UIColor whiteColor].CGColor;
    passwordHolder.layer.borderWidth = 1.0f;
    passwordHolder.layer.cornerRadius = 5.0f;
    [contentHolder addSubview:passwordHolder];
    
    loginBtn = [[UIButton alloc] initWithFrame:CGRectMake((contentHolder.frame.size.width-250)/2, 260, 250, 50)];
    [loginBtn addTarget:self action:@selector(saveTap:) forControlEvents:UIControlEventTouchUpInside];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginBtn.backgroundColor = [UIColor colorWithRed:80.0f/255.0f
                                               green:164.0f/255.0f
                                                blue:254.0f/255.0f
                                               alpha:1.0f];
    [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [loginBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
    //addBtn.layer.cornerRadius = 5.0f;
    loginBtn.clipsToBounds = YES;
    //loginBtn.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    //loginBtn.layer.borderWidth = 1.0f;
    loginBtn.layer.cornerRadius = 5.0f;
    [contentHolder addSubview:loginBtn];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
