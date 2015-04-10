//
//  InterfaceController.m
//  watchkitDemoApp WatchKit Extension
//
//  Created by arwin on 12/02/15.
//  Copyright (c) 2015 IGT. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
@synthesize myLabel;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (IBAction)showUserInfo {
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.demoSharingGroup"];
    [mySharedDefaults synchronize];
    self.myLabel.text = [mySharedDefaults stringForKey:@"savedUserInput"];
}

@end



