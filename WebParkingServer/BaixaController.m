//
//  BaixaController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 24/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "BaixaController.h"

@interface BaixaController ()

@end

@implementation BaixaController



@synthesize rotulo_teste;
@synthesize meu_ticket;




- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    toolbar.frame = CGRectMake(0, 0, 400, 44);
    UIBarButtonItem *button1 = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleDone target:self action:@selector(sendAction)];
    [toolbar setItems:[[NSArray alloc] initWithObjects:button1,nil]];
    [self.view addSubview:toolbar];
    rotulo_teste.text = meu_ticket.tic_placa;
    
}


-(void)sendAction{
    
    MenuController *janela_menu = [[MenuController alloc] initWithNibName:@"MenuController" bundle:nil];
    [self presentViewController:janela_menu animated:true completion:nil];
    
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


-(IBAction)baixaTicket{
    
    NSError *error = nil;
    [self.meu_ticket setValue:@"iur-0000" forKey:@"tic_placa"];
    [self.meu_ticket.managedObjectContext save:&error];
    
    
}



-(IBAction)deletandoObjeto{
    
    [self.meu_ticket.managedObjectContext deleteObject:self.meu_ticket];
    
    
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
