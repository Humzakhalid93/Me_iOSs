//
//  RWTScaryBugDoc.m
//  TableView
//
//  Created by kashif Saeed on 07/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "RWTScaryBugDoc.h"
#import "ScaryBugData.h"
@implementation RWTScaryBugDoc

- (id)initWithTitle:(NSString *)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage{
    
    if ((self = [super init])) {
        self.data = [[ScaryBugData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
