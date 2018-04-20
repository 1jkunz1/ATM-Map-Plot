//
//  ViewController.m
//
//  Created by Joseph Kunzler on 4/19/18.
//  Copyright © 2018 Joseph Kunzler. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

@synthesize coordinate=_coordinate;

@synthesize title=_title;

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate

{
    self = [super init];
    _title = title;
    _coordinate = coordinate;
    return self;
    
}

@end
