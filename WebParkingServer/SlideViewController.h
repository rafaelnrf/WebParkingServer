//
//  SlideViewController.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 01/02/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideViewController : UIViewController{
    
    
    NSUInteger count;
    

}




@property (nonatomic, strong) IBOutlet UIImageView *slide;

@property NSUInteger count;

@property (nonatomic, strong) NSTimer *timer;


- (void)awakeFromNib;

- (void)updatePhoto;

- (void)updateImage;

@end
