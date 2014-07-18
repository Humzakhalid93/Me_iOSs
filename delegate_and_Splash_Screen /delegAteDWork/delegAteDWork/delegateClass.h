//
//  delegateClass.h
//  delegAteDWork
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Methods <NSObject>

- (void) End;

@end


@interface delegateClass : NSObject {
    
    
    
}


@property (strong) id<Methods> delegate;

- (void) processing;


@end
