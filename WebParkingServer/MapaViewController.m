//
//  MapaViewController.m
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 25/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "MapaViewController.h"

@interface MapaViewController ()




@end

@implementation MapaViewController

#define METERS_PER_MILE 1609.344


@synthesize meu_mapa;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = -23.6606012;
    zoomLocation.longitude= -46.6341081;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    [meu_mapa setRegion:viewRegion animated:YES];
    
    
    
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
