//
//  MenuController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 11/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "MenuController.h"

@interface MenuController ()

@end

@implementation MenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(IBAction) chamaTelaSaida{
    
    
     SaidaController *janela_saida = [[SaidaController alloc] initWithNibName:@"SaidaController" bundle:nil];
     [self presentViewController:janela_saida animated:true completion:nil];
    
    
}


-(IBAction) chamaTelaEntrada{
    
    
    EntradaController *janela_entrada = [[EntradaController alloc] initWithNibName:@"EntradaController" bundle:nil];
    [self presentViewController:janela_entrada animated:true  completion:nil];
    
    
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
