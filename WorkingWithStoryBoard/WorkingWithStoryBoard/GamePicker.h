//
//  GamePicker.h
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 14/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePicker;

@protocol GamePickerViewControllerDelegate <NSObject>
- (void)gamePickerViewController:
(GamePicker *)controller
                   didSelectGame:(NSString *)game;
@end


@interface GamePicker : UITableViewController<UITableViewDelegate>
    
    
@property (nonatomic, weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *game;

@end
