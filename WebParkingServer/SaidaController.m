//
//  SaidaController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 18/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "SaidaController.h"
#import "AppDelegate.h"

@interface SaidaController ()

@end

@implementation SaidaController


@synthesize tabulacao;
@synthesize valores;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    toolbar.frame = CGRectMake(0, 0, 400, 44);
    UIBarButtonItem *button1 = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleDone target:self action:@selector(sendAction)];
    [toolbar setItems:[[NSArray alloc] initWithObjects:button1,nil]];
    [self.view addSubview:toolbar];
    
    [self ler_valores];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)sendAction{
    
    MenuController *janela_menu = [[MenuController alloc] initWithNibName:@"MenuController" bundle:nil];
    [self presentViewController:janela_menu animated:true completion:nil];
    
}


-(void)cancelAction{
    
    
    
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



-(IBAction)ler_valores{
  
    
    AppDelegate *meu_delegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    NSFetchRequest *requisicao = [[NSFetchRequest alloc] init];
    requisicao.entity = [NSEntityDescription entityForName:@"Ticket" inManagedObjectContext: meu_delegate.managedObjectContext];
    requisicao.sortDescriptors = [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"tic_codigo" ascending:YES]];
    NSError *meu_erro = nil;
    
    valores = [meu_delegate.managedObjectContext executeFetchRequest:requisicao error:&meu_erro];
    
    if(meu_erro){
        NSLog(@"%@",[meu_erro description]);
        valores = nil;
        
    }
    //dispatch_async(dispatch_get_main_queue(), ^{
    [tabulacao reloadData];
    //});
    
    
    
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [valores count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identificador_celula = @"qualquer";
    UITableViewCell *celula = [tableView dequeueReusableCellWithIdentifier:identificador_celula];
    if(celula == nil){
        celula = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: identificador_celula];
    }
    
    if(valores.count > 0){
        Ticket *meu_ticket = [valores objectAtIndex:[indexPath row]];
        celula.textLabel.text = meu_ticket.tic_placa;
        celula.detailTextLabel.text = meu_ticket.tic_modelo;
    }
    return celula;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    BaixaController *janela_saida = [[BaixaController alloc] initWithNibName:@"BaixaController" bundle:nil];
    NSIndexPath *index = [self.tabulacao indexPathForSelectedRow];
    Ticket *meu_ticket = [valores objectAtIndex:[index row]];
    janela_saida.meu_ticket = meu_ticket;
    [self presentViewController:janela_saida animated:true completion:nil];
    
    
}


/*
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    
    
}
*/




@end
