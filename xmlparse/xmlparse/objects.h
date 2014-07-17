//
//  objects.h
//  xmlparse
//
//  Created by kashif Saeed on 05/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface objects : NSObject


- (instancetype)initWithDangerSet:(objects *)dangerSet;

@property (nonatomic, strong) NSString *day;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *descrip;


@end
