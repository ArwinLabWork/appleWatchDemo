//
//  ViewController.m
//  watchkitDemoApp
//
//  Created by arwin on 12/02/15.
//  Copyright (c) 2015 IGT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postGreetingToWatch:(id)sender {
    
    NSString* myString = [_gTextbox text];
    _gLabel.text = myString;
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.demoSharingGroup"];
    [mySharedDefaults setObject:myString forKey:@"savedUserInput"];
    [mySharedDefaults synchronize];
}


@end
