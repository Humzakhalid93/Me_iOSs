//
//  PlayersViewController.h
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 08/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController<PlayerDetailsViewControllerDelegate>

@property (nonatomic , strong) NSMutableArray *player;




@end
