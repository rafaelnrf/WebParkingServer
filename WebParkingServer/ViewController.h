//
//  ViewController.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 11/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuController.h"
#import "Visao2ViewController.h"

@interface ViewController : UIViewController {
    
    
    
    UITextField *campo_login;
    UITextField *campo_senha;
    
}



@property (nonatomic, strong) IBOutlet UITextField *campo_login;
@property (nonatomic, strong) IBOutlet UITextField *campo_senha;



-(IBAction) chamaBotaoEntrar;
-(void) chamaTelaMenu;
-(IBAction)chamaStoryBoard;





@end

