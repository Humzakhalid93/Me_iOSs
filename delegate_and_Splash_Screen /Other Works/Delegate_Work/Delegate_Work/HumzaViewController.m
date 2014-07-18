//
//  HumzaViewController.m
//  Delegate_Work
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaViewController.h"

@interface HumzaViewController ()

@end

@implementation HumzaViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    delegateClass *sampleProtocol = [[delegateClass alloc]init];
    sampleProtocol.delegate = self;
    //[myLabel setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Sample protocol delegate
-(void)ProcessCompleted{
    [myLabel setText:@"Process Completed"];
}

@end
