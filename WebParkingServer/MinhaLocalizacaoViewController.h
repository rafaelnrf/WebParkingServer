//
//  MinhaLocalizacaoViewController.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 25/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MinhaLocalizacaoViewController : UIViewController <CLLocationManagerDelegate>{
    
    UILabel *latitude;
    UILabel *longitude;
    MKMapView *localizacao;
    CLLocationManager *MinhaLocalizacao;
    
}


@property (nonatomic, strong) IBOutlet UILabel *latitude;
@property (nonatomic, strong) IBOutlet UILabel *longitude;
@property (nonatomic, strong) IBOutlet MKMapView *localizacao;
@property (nonatomic, strong) CLLocationManager *MinhaLocalizacao;


@end
