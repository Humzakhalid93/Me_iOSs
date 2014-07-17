//
//  PlayerDetailsViewController.h
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 11/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePicker.h"


//#import "PlayerDetailsViewController.h"
@class PlayerDetailsViewController;
@class Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>  // Just Like InterFace
//Protocol is use to define unimplemented methods

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;


@end






@interface PlayerDetailsViewController : UITableViewController<GamePickerViewControllerDelegate>

//@property (strong, nonatomic) IBOutlet UITableViewCell //*nameTextField;

//@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;




@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;



@end
