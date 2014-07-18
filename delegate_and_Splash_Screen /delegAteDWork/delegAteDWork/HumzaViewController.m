//
//  HumzaViewController.m
//  delegAteDWork
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaViewController.h"
#import "delegateClass.h"


@interface HumzaViewController ()

@end

@implementation HumzaViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    delegateClass *del = [delegateClass new];
    self.view.backgroundColor = [UIColor greenColor];
    del.delegate = self;
    _myLabel.text = @"Processing For Switching to New Screen . . . ";
    [del processing];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma MethodsImplemetation

- (void) End{
    _myLabel.text = @"Process Completed";
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(newDisplay) userInfo:nil repeats:NO];
    _myLabel.textColor = [UIColor darkTextColor];
    
    
}


- (void) newDisplay{
    UITableViewController *contr= (UITableViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"NewController"];
    
    
    
    [self presentViewController:contr animated:NO completion:NULL];
  //  [self presentingViewController:contr];
    
    //    [self presentedViewController:contr animated:NO completion:NULL];
    
    //
//    UINavigationController *cVC = (UINavigationController *)[self.storyboard instantiateViewControllerWithIdentifier:@"SideMenuNavigationController"];
//    
//    [self presentViewController:cVC animated:NO completion:NULL];
    
}

@end


