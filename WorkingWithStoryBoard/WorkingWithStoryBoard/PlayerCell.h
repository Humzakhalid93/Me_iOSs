
//
//  PlayerCell.h
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 08/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell


@property(nonatomic , strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView;

@end
