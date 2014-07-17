//
//  ScaryBugData.m
//  TableView
//
//  Created by kashif Saeed on 07/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

-(id)initWithTitle:(NSString *)title rating:(float)rating{
    
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}


@end
