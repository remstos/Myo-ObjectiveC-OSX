//
//  AppDelegate.h
//  MyoObjectiveCOSX
//
//  Created by Remi Santos on 05/08/2014.
//  Copyright (c) 2014 Remi Santos. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MyoObjectiveC.h"
@interface AppDelegate : NSObject <NSApplicationDelegate, MyoDelegate>

@property (assign) IBOutlet NSWindow *window;

@end
