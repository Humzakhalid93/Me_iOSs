//
//  delegateClass.h
//  Delegate_Work
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SampleProtocolDelegate <NSObject>

- (void) ProcessCompleted;

@end

@interface delegateClass : NSObject{
    
    id<SampleProtocolDelegate> _delegate;
    
}

@property (nonatomic,strong) id delegate;

-(void)startSampleProcess;


@end
