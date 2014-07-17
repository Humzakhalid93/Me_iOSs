//
//  RWTScaryBugDoc.h
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RWTScaryBugData;


@interface RWTScaryBugDoc : NSObject


@property (strong) RWTScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;


- (id)initWithTitle:(NSString *)title rating:(float)rating tImg:(UIImage *) thumb fImg:(UIImage *)full;


@end
