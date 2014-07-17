//
//  RWTScaryBugDoc.m
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "RWTScaryBugDoc.h"
#import "RWTScaryBugData.h"


@implementation RWTScaryBugDoc

@synthesize data = _data;
@synthesize fullImage = _fullImage;
@synthesize thumbImage = _thumbImage;



-(id)initWithTitle:(NSString *)title rating:(float)rating tImg:(UIImage *)thumb fImg:(UIImage *)full{
    
    if (self = [super init]) {
        
        self.data = [[RWTScaryBugData alloc] initWithTitle:title rating:rating];
        self.fullImage = full;
        self.thumbImage = thumb;
        //_fullImage = full;
        
        
    }
    
    return self;
    
}

@end
