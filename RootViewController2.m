//
//  RootViewController2.m
//  FisrtStepRSS
//
//  Created by Admin on 23/10/2012.
//  Copyright (c) 2012 Vadim Glushko. All rights reserved.
//

#import "RootViewController2.h"

@interface RootViewController2 ()

@end

@implementation RootViewController2
@synthesize tableView;
@synthesize parser;


- (void)viewDidLoad
{
    [super viewDidLoad];    
    parser = [[CParser alloc] init];
    parser.delegate = self;
    
}

-(void)finishParser
{
    UIBarButtonItem *edit =[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
                                                                         target:self
                                                                         action:@selector(editing)] autorelease];
    tableView = [[CTable alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain title:parser.parData.feedTitle pubdate:parser.parData.feedPubDate url:parser.parData.feedURL];
    tableView.delegat = self;
    self.navigationItem.rightBarButtonItem = edit;
    [self.view addSubview:tableView];
}

-(void)InBrowser:(NSIndexPath *)indexPath
{    
    NSString *currenturl = [NSString string];
    currenturl = [self.tableView.data.dataURL objectAtIndex:indexPath.row];
    SecondViewController *second = [[SecondViewController alloc] initwithurl:currenturl];
    [self.navigationController pushViewController:second animated:YES];
    [currenturl release];
    
}

-(void)editing
{
    [tableView editing];
}
-(void)dealloc
{
    [tableView release];
    [parser release];
    [super dealloc];
}

@end
