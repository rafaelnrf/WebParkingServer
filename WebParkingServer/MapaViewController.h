//
//  MapaViewController.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 25/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface MapaViewController : UIViewController {
    
    
    
    MKMapView *meu_mapa;
    
    
    
}


@property (nonatomic,strong) IBOutlet MKMapView *meu_mapa;



@end
