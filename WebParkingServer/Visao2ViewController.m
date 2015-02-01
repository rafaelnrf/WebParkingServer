//
//  Visao2ViewController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 01/02/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "Visao2ViewController.h"

@interface Visao2ViewController ()

@end

@implementation Visao2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) retornaPrincipalStoryBoard{
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController* initialHelpView = [storyboard instantiateInitialViewController];
    
    [initialHelpView setModalPresentationStyle:UIModalPresentationFullScreen];
    [self presentViewController:initialHelpView animated:NO completion:NULL];
    
    
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
