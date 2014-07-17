//
//  RWTScaryBugData.m
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "RWTScaryBugData.h"

@implementation RWTScaryBugData
@synthesize Title = _Title;
@synthesize Rating = _Rating;


- (id)initWithTitle:(NSString *)title rating:(float)rating {
    
    if (self = [super init]) {
        self.Title = title;
        self.Rating = rating;
    }
    return self;
    
}


@end
