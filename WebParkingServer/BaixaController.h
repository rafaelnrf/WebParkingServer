//
//  BaixaController.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 24/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"
#import "MenuController.h"

@interface BaixaController : UIViewController{
    
    
    UILabel *rotulo_teste;
    Ticket *meu_ticket;
    
    
}


@property (nonatomic, strong) Ticket *meu_ticket;

@property (nonatomic, strong) IBOutlet UILabel *rotulo_teste;

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;

- (void)sendAction;

- (IBAction)baixaTicket;

- (IBAction)deletandoObjeto;


@end
