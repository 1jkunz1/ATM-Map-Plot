//
//  ViewController.m
//
//  Created by Joseph Kunzler on 4/19/18.
//  Copyright © 2018 Joseph Kunzler. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>

@interface Custom_Annotation : NSObject <MKAnnotation>

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *subtitle;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

-(id) initWithTitle:(NSString *) title subTitle:(NSString*)subtitle AndCoordinate:(CLLocationCoordinate2D)coordinate;


@end
