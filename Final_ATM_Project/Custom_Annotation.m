//
//
//  Created by Joseph Kunzler on 4/19/18.
//  Copyright © 2018 Joseph Kunzler. All rights reserved.
//

#import "Custom_Annotation.h"

@implementation Custom_Annotation

@synthesize coordinate=_coordinate;

@synthesize title=_title;

@synthesize subtitle=_subtitle;

-(id) initWithTitle:(NSString *)title subTitle:(NSString*)subtitle AndCoordinate:(CLLocationCoordinate2D)coordinate

{
    self = [super init];
    _title = title;
    _coordinate = coordinate;
    _subtitle = subtitle;
    return self;
    
}

@end
