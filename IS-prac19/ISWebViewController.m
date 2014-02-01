//
//  ISWebViewController.m
//  IS-prac19
//
//  Created by Chida Mitsuhiro on 14/02/01.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "ISWebViewController.h"

@interface ISWebViewController ()

@property (strong, nonatomic) IBOutlet UITextField *urlText;
- (IBAction)openURL:(UIButton *)sender;

@end

@implementation ISWebViewController

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
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *lastURL = [defaults valueForKey:@"lastURL"];
    if (lastURL != nil) {
        _urlText.text = lastURL;
    }
    
    NSURL *url = [[NSURL alloc] initWithString:_urlText.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openURL:(UIButton *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:_urlText.text forKey:@"lastURL"];
    NSURL *url = [[NSURL alloc] initWithString:_urlText.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    [self.view endEditing:YES];
}

@end
