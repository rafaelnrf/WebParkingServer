//
//  ViewController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 11/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




@synthesize campo_login, campo_senha;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}





- (void) chamaTelaMenu{
    
    
    
     MenuController *novajanela = [[MenuController alloc] initWithNibName:@"MenuController" bundle:nil];
    [self presentViewController:novajanela animated:true completion:nil];
    
    
    //MenuController *tela_menu = [[MenuController alloc] init]; // create object of VC2
    //[self presentViewController:tela_menu animated:YES completion:nil];
    //OR // if you have to use navigation controller then
    //[self.navigationController pushViewController:vc2 animated:YES];
    
}


- (void) chamaBotaoEntrar{
    
                // rotina de verificação junto ao webservice ////////////////////////////////////////////
                NSURL *url = [NSURL URLWithString:@"http://www.rafaelnonato.com.br/upjava/logar.php"];
                NSData *jsonData = [NSData dataWithContentsOfURL:url];
    
                if(jsonData != nil)
                {
                    NSError *error = nil;
                    id result = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
                    NSString *info_login = [result objectAtIndex:0];
                    NSString *info_senha = [result objectAtIndex:1];
                    
                    if([info_login isEqualToString:campo_login.text] && [info_senha isEqualToString:campo_senha.text]){
                        [self chamaTelaMenu];
                    }else{
                        UIAlertView *meu_alerta = [[UIAlertView alloc] initWithTitle:@"Aviso" message:@"Login ou Senha incorretos" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        [meu_alerta show];
                    }
                    //NSLog(@"%@", arrayOfJSON);
                }else{
                    
                     UIAlertView *meu_alerta = [[UIAlertView alloc] initWithTitle:@"Aviso" message:@"Sistema indisponivel no momento" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                    [meu_alerta show];
                    
                }
                /////////////////////////////////////////////////////////////////////////////////////////
    
   
}



-(IBAction)chamaStoryBoard{
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoryboardVisao2" bundle:nil];
    //Visao2ViewController* initialHelpView = [storyboard instantiateInitialViewController];
    
    
    //Visao2ViewController *vc = [storyboard    instantiateViewControllerWithIdentifier:@"Visao2ViewController"];
    Visao2ViewController* initialHelpView = [storyboard instantiateInitialViewController];
    [initialHelpView setModalPresentationStyle:UIModalPresentationFullScreen];
    [self presentViewController:initialHelpView animated:NO completion:NULL];
    
    //initialHelpView.modalPresentationStyle = UIModalPresentationFormSheet;
    //[self presentModalViewController:initialHelpView animated:YES];
    
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
