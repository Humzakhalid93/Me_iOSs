//
//  delegateClass.m
//  delegAteDWork
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "delegateClass.h"

@implementation delegateClass

- (void)processing{
    
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self.delegate  selector:@selector(End) userInfo:nil repeats:NO];
    
    
}

@end
