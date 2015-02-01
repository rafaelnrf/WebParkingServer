//
//  SaidaController.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 18/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuController.h"
#import "Ticket.h"
#import "BaixaController.h"

@interface SaidaController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
    
    NSArray *valores;
    UITableView *tabulacao;
    
}


@property (nonatomic, strong) IBOutlet UITableView *tabulacao;

@property (nonatomic, strong) NSArray *valores;

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;

- (void)sendAction;

- (void)cancelAction;

- (IBAction) ler_valores;


@end
