//
//  EntradaController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 24/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "EntradaController.h"

@interface EntradaController ()

@end

@implementation EntradaController


@synthesize tic_placa,tic_modelo,tic_prisma;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    toolbar.frame = CGRectMake(0, 0, 400, 44);
    UIBarButtonItem *button1 = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleDone target:self action:@selector(sendAction)];
    [toolbar setItems:[[NSArray alloc] initWithObjects:button1,nil]];
    [self.view addSubview:toolbar];
    
    
    
}



-(void)sendAction{
    
    MenuController *janela_menu = [[MenuController alloc] initWithNibName:@"MenuController" bundle:nil];
    [self presentViewController:janela_menu animated:true completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    
    if(item.tag == 0)
    {
        NSLog(@"Esse é o zero!");
        
    }else if(item.tag == 1){
        MenuController *janela_menu = [[MenuController alloc] initWithNibName:@"MenuController" bundle:nil];
        [self presentViewController:janela_menu animated:true completion:nil];
        NSLog(@"Esse é o primeiro!");
        
    }
}


- (IBAction)InserirVeiculo{
    
    
    AppDelegate *meu_delegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    Ticket *obj_ticket = [NSEntityDescription insertNewObjectForEntityForName:@"Ticket" inManagedObjectContext:meu_delegate.managedObjectContext];
    
    obj_ticket.tic_placa  = tic_placa.text;
    obj_ticket.tic_modelo = tic_modelo.text;
    obj_ticket.tic_prisma = tic_prisma.text;
    
    
    [meu_delegate.managedObjectContext save:nil];
    
    tic_placa.text = @"";
    tic_modelo.text = @"";
    tic_prisma.text = @"";

    
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
