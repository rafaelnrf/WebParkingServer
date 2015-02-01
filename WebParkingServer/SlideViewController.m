//
//  SlideViewController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 01/02/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "SlideViewController.h"

@interface SlideViewController ()

@end

@implementation SlideViewController


@synthesize slide;
@synthesize timer;
@synthesize count;


- (void)viewDidLoad {
    [super viewDidLoad];
    
     slide.image = [UIImage imageNamed:@"congresso.jpg"];
     self.count = 0;
     timer = [NSTimer scheduledTimerWithTimeInterval:15.0 target:self selector:@selector(updatePhoto) userInfo:nil repeats:YES];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (void)awakeFromNib {
    
}
// this creates a loop every 0.5 secs.
// then set up your image changes.

-(void)updatePhoto{
    //NSLog(@"sequence inicial = %ld", (long)self.count);
    self.count +=1;
    if(count == 3){  count = 0;  }
    [self updateImage];
}

-(void)updateImage{
     if (self.count == 0){
       slide.image = [UIImage imageNamed:@"congresso.jpg"];
     }else if (self.count == 1){
       slide.image = [UIImage imageNamed:@"lencois.jpg"];
     }else if(self.count == 2){
       slide.image = [UIImage imageNamed:@"rio2.jpg"];
    }
                           
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
