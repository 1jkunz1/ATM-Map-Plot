//
//  ViewController.m
//
//  Created by Joseph Kunzler on 4/19/18.
//  Copyright © 2018 Joseph Kunzler. All rights reserved.
//

#import "ViewController.h"
#import "Custom_Annotation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.mapView addAnnotations:[self createAnnotations]];
    
    [self goToLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)createAnnotations
{
    NSMutableArray *annotations = [[NSMutableArray alloc] init];
    
    //Get locations from plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"locations" ofType:@"plist"];
    NSArray *locations = [NSArray arrayWithContentsOfFile:path];
    
    
    for (NSDictionary *row in locations) {
        
        NSNumber *latitude = [row objectForKey:@"lat"];
        NSNumber *longitude = [row objectForKey:@"lon"];
        NSString *title = [row objectForKey:@"atm_name"];
        NSString *subtitle = [row objectForKey:@"location"];
        
        //Create coordinates from the latitude and longitude values
        CLLocationCoordinate2D coord;
        coord.latitude = latitude.doubleValue;
        coord.longitude = longitude.doubleValue;
        
        MapViewAnnotation *annotation = [[MapViewAnnotation alloc] initWithTitle:title subTitle:subtitle AndCoordinate:coord];
        [annotations addObject:annotation];
        
    }
    return annotations;
}

- (void)goToLocation
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 41.8881; //Downtown Chicago
    zoomLocation.longitude= -87.6598; //Downtown Chicago
    
    MKCoordinateSpan zoom;
    zoom.latitudeDelta = .1f; //Zoom level
    zoom.longitudeDelta = .1f;//Zoom level
    
    MKCoordinateRegion myRegion;
    myRegion.center = zoomLocation;
    myRegion.span = zoom;
    

    [self.mapView setRegion:myRegion animated:YES];
    
    [self.mapView regionThatFits:myRegion];
}

@end
