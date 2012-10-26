//
//  FirstViewController.m
//  FisrtStepRSS
//
//  Created by Admin on 26/10/2012.
//  Copyright (c) 2012 Vadim Glushko. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize font;
@synthesize button;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    font = [[UIImageView alloc]initWithFrame:self.view.bounds];
    font.image = [UIImage imageNamed:@"mobiles.jpg"];
    [self.view addSubview:font];    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(30, 320, 260,40);
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"Click ME!!!" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tuchdown) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];    
}

-(void)tuchdown
{
    self.navigationController.navigationBarHidden = NO;
    RootViewController2 *root = [[RootViewController2 new]autorelease];
    [self.navigationController pushViewController:root animated:YES];    
}
-(void)dealloc
{
    [font release];
    [button release];
    [super dealloc];
}
@end
