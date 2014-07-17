//
//  RWTScaryBugDoc.h
//  TableView
//
//  Created by kashif Saeed on 07/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ScaryBugData;

@interface RWTScaryBugDoc : NSObject


@property (strong) ScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id) initWithTitle:(NSString *) title rating:(float) rating thumbImage:(UIImage  *)thumbImage
          fullImage :(UIImage *)fullImage;

@end
