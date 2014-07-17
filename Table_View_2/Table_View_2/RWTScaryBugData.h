//
//  RWTScaryBugData.h
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWTScaryBugData : NSObject


@property (strong) NSString *Title;
@property (assign) float Rating;

- (id)initWithTitle:(NSString *)title rating:(float) rating;

@end
