//
//  Log.h
//  LocationTester
//
//  Created by Nick Wienholt on 1/11/12.
//  Copyright (c) 2012 Nick Wienholt. All rights reserved.
//

#import <Foundation/Foundation.h>

#define NSLog(args...) _Log(@"DEBUG ", __FILE__,__LINE__,__PRETTY_FUNCTION__,args);

@interface Log : NSObject
void _Log(NSString *prefix, const char *file, int lineNumber, const char *funcName, NSString *format,...);
@end
