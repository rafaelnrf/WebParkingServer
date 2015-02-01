//
//  MinhaLocalizacaoViewController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 25/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "MinhaLocalizacaoViewController.h"

@interface MinhaLocalizacaoViewController ()

@end

@implementation MinhaLocalizacaoViewController



@synthesize latitude,localizacao,longitude,MinhaLocalizacao;

#define METERS_PER_MILE 1609.344


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    MinhaLocalizacao = [[CLLocationManager alloc] init];
    MinhaLocalizacao.delegate = self;
    MinhaLocalizacao.desiredAccuracy = kCLLocationAccuracyBest;
   [MinhaLocalizacao startUpdatingLocation];
    
    
    
    
}



-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    
    
                NSString *texto_erro = error.code == kCLErrorDenied ? @"Acesso Negado" : @"Erro ao utilizar o location Manager";
                UIAlertView *meu_alerta = [[UIAlertView alloc] initWithTitle:@"Erro" message:texto_erro delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
                [meu_alerta show];
    
}



-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation  fromLocation:(CLLocation *)oldLocation{
    
    
    
    NSString *lat = [[NSString alloc] initWithFormat:@"%f\u00B0",newLocation.coordinate.latitude];
    NSString *log = [[NSString alloc] initWithFormat:@"%f\u00B0",newLocation.coordinate.longitude];
    
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = newLocation.coordinate.latitude;
    zoomLocation.longitude= newLocation.coordinate.longitude;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    [localizacao setRegion:viewRegion animated:YES];
    
    
    latitude.text = lat;
    longitude.text = log;
    
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
