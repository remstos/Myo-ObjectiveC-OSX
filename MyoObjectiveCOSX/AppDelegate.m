//
//  AppDelegate.m
//  MyoObjectiveCOSX
//
//  Created by Remi Santos on 05/08/2014.
//  Copyright (c) 2014 Remi Santos. All rights reserved.
//

#import "AppDelegate.h"
#import "MyoObjectiveC.h"
@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    Myo *newMyo = [[Myo alloc] initWithApplicationIdentifier:@"com.example.myoobjc"];
    
    BOOL found = false;
    while (!found) {
        found = [newMyo connectMyoWaiting:10000];
    }
    newMyo.delegate = self;
    newMyo.updateTime = 1000;
    [newMyo startUpdate];
    
}
-(void)myoOnConnect:(Myo *)myo
{
    NSLog(@"Myo on connect");
}
-(void)myoOnDisconnect:(Myo *)myo
{
    NSLog(@"Myo on disconnect");
}
-(void)myoOnArmRecognized:(Myo *)myo
{
    NSLog(@"Myo on arm recognized");
}
-(void)myoOnArmLost:(Myo *)myo
{
    NSLog(@"Myo on arm lost");
}
-(void)myoOnPair:(Myo *)myo
{
    NSLog(@"Myo on pair");
}

-(void)myo:(Myo *)myo onAccelerometerDataWithVector:(float)vector
{
    NSLog(@"Myo on accelerometer data");
}
-(void)myo:(Myo *)myo onGyroscopeDataWithVector:(float)vector
{
    NSLog(@"Myo on gyroscope data");
}
-(void)myo:(Myo *)myo onOrientationDataWithRoll:(int)roll pitch:(int)pitch yaw:(int)yaw
{
    NSLog(@"Myo on orientation data");
}
-(void)myo:(Myo *)myo onRssi:(int8_t)rssi
{
    NSLog(@"Myo on rssi");
}
-(void)myo:(id)myo onPose:(MyoPose *)pose
{
    NSLog(@"posed : %u",pose.poseType);
}

@end
