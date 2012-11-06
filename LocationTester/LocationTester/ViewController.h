//
//  ViewController.h
//  LocationTester
//
//  Created by Nick Wienholt on 1/11/12.
//  Copyright (c) 2012 Nick Wienholt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
}


@property (nonatomic, retain) CLLocationManager *locationManager;



@end
