//
//  webViewController.m
//  IS-prac19
//
//  Created by Chida Mitsuhiro on 14/01/25.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *web;

@end

@implementation webViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [_web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://map.google.com"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
