//
//  SecondViewController.m
//  FisrtStepRSS
//
//  Created by Admin on 25/10/2012.
//  Copyright (c) 2012 Vadim Glushko. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()


@end

@implementation SecondViewController
@synthesize url;
@synthesize browser;
@synthesize texturl;

-(id)initwithurl:(NSString *)text
{
    self.texturl = [NSString stringWithString:text];
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    browser = [[UIWebView alloc] initWithFrame:self.view.bounds];    
    self.url = [NSURL URLWithString:self.texturl];    
    [self.view addSubview:browser];
    [browser loadRequest:[NSURLRequest requestWithURL:self.url]];	
}
-(void)dealloc
{
    [url release];
    [browser release];
    [texturl release];
    [super dealloc];
}


@end
