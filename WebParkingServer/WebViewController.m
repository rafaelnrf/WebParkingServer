//
//  WebViewController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 25/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController


@synthesize minha_web;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    NSURL *websiteUrl = [NSURL URLWithString:@"http://www.rafaelnonato.com.br"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [minha_web loadRequest:urlRequest];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
