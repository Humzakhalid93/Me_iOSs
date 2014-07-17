//
//  HumzaViewController.m
//  diceRoll
//
//  Created by kashif Saeed on 05/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaViewController.h"

@interface HumzaViewController ()

@end

@implementation HumzaViewController

-(void)setBtn:(UIButton *)btn{
    
}

- (UIButton *)btn{
    
    return self.btn;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
NSLog(@"In %@",NSStringFromSelector(_cmd));

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"In %@",NSStringFromSelector(_cmd));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
NSLog(@"In %@",NSStringFromSelector(_cmd));

}

@end
