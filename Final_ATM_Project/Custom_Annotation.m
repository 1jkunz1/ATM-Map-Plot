//
//
//  Created by Joseph Kunzler on 4/19/18.
//  Copyright © 2018 Joseph Kunzler. All rights reserved.
//

#import "Custom_Annotation.h"

@implementation Custom_Annotation

@synthesize coordinate=_coordinate;

@synthesize title=_title;

@synthesize location=_location;

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate

{
    self = [super init];
    _title = title;
    _coordinate = coordinate;
    _location; = location;
    return self;
    
}

@end
