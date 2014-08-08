MYO-ObjectiveC-OSX
==================

Objective-C wrapper for the c++ Myo OS X sdk


*You need to add the myo.framework to the project*


## Get started

##### Init and connect Myo
```
    Myo *newMyo = [[Myo alloc] initWithApplicationIdentifier:@"com.example.myoobjc"];
    
    BOOL found = false;
    while (!found) {
        found = [newMyo connectMyoWaiting:10000];
    }
    newMyo.updateTime = 1000;
    [newMyo startUpdate];
```

##### MyoDelegate
```
@interface ViewController : UIViewController <MyoDelegate>
```

And implement delegate methods

```
-(void)myoOnArmLost:(Myo*)myo;

-(void)myoOnArmRecognized:(Myo*)myo;

-(void)myoOnPair:(Myo*)myo;

-(void)myoOnConnect:(Myo*)myo;

-(void)myoOnDisconnect:(Myo*)myo;

-(void)myo:(Myo*)myo onPose:(MyoPose *)pose;

-(void)myo:(Myo*)myo onOrientationDataWithRoll:(int)roll pitch:(int)pitch yaw:(int)yaw;

-(void)myo:(Myo*)myo onAccelerometerDataWithVector:(float)vector;

-(void)myo:(Myo*)myo onGyroscopeDataWithVector:(float)vector;

-(void)myo:(Myo*)myo onRssi:(int8_t)rssi;

```
