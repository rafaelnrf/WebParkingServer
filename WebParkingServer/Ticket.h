//
//  Ticket.h
//  WebParkingServer
//
//  Created by Rafael Nonato Ribeiro Ferreira on 24/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Ticket : NSManagedObject

@property (nonatomic, retain) NSNumber * tic_id;
@property (nonatomic, retain) NSString * tic_placa;
@property (nonatomic, retain) NSString * tic_modelo;
@property (nonatomic, retain) NSString * tic_cor;
@property (nonatomic, retain) NSString * tic_prisma;
@property (nonatomic, retain) NSString * tic_codigo;
@property (nonatomic, retain) NSNumber * tic_total;
@property (nonatomic, retain) NSString * tic_pgto;
@property (nonatomic, retain) NSDate * tic_inicio;
@property (nonatomic, retain) NSDate * tic_termino;
@property (nonatomic, retain) NSNumber * tic_uni_id;
@property (nonatomic, retain) NSNumber * tic_maq_id;

@end
