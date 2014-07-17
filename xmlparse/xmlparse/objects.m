//
//  objects.m
//  xmlparse
//
//  Created by kashif Saeed on 05/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "objects.h"

@implementation objects

- (instancetype)initWithDangerSet:(objects *)dangerSet{
    
    if (self = [super init]) {
        _day = dangerSet.day;
        _date = dangerSet.date;
        _name = dangerSet.name;
        _descrip = dangerSet.descrip;
    }
    return self;
}

@end
