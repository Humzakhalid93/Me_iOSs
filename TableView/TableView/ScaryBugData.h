//
//  ScaryBugData.h
//  TableView
//
//  Created by kashif Saeed on 07/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

-  (id)initWithTitle:
   (NSString*)title rating:
   	(float)rating;

@end
