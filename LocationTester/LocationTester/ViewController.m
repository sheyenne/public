//
//  ViewController.m
//  LocationTester
//
//  Created by Nick Wienholt on 1/11/12.
//  Copyright (c) 2012 Nick Wienholt. All rights reserved.
//

#import "ViewController.h"
#import "Log.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize locationManager;


- (void)viewDidLoad
{
    [super viewDidLoad];
	self.locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = 100;
    locationManager.pausesLocationUpdatesAutomatically = NO;
    [locationManager startUpdatingLocation];
    NSLog(@"ViewController viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    NSLog(@"didUpdateToLocation");
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    NSLog(@"didUpdateLocations");
}


- (void)locationManagerDidPauseLocationUpdates:(CLLocationManager *)manager
{
    NSLog(@"locationManagerDidPauseLocationUpdates");
}

- (void)locationManagerDidResumeLocationUpdates:(CLLocationManager *)manager
{
    NSLog(@"locationManagerDidResumeLocationUpdates");
}


@end
