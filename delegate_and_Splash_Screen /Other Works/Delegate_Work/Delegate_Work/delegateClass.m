//
//  delegateClass.m
//  Delegate_Work
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "delegateClass.h"

@implementation delegateClass

- (void)startSampleProcess {
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(ProcessCompleted) userInfo:nil repeats:NO];
    
}

@end
