//
//  PlayerDetailsViewController.m
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 11/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Player.h"


@implementation PlayerDetailsViewController{
    NSString *game;
    
}
@synthesize delegate;

- (IBAction)cancel:(id)sender
{
    
    [self.delegate playerDetailsViewControllerDidCancel:self];
//	[self.delegate playerDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{

    Player *player = [[Player alloc]init];
    
    player.name = self.nameTextField.text;
    player.game = game;
    player.rating =  4;
    
    
	[self.delegate playerDetailsViewControllerDidSave:self  didAddPlayer:player ];


}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if ([segue.identifier isEqualToString:@"PickGame"]) {
        GamePicker *gamePickerViewController = segue.destinationViewController;
		gamePickerViewController.delegate = self;
		gamePickerViewController.game = game;
    }
    
    
}




- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        [self.nameTextField becomeFirstResponder];
    }
    
}





//- (id)initWithCoder:(NSCoder *)aDecoder{
//    
//    if (self =[super initWithCoder:aDecoder]) {
//        
//        NSLog(@"init PlayerDetailsViewController");
//        
//    }
//    return self;
//}
//
//
//
- (void)dealloc{
    [super viewDidLoad];
    self.detailLabel.text = game;
}



#pragma mark - GamePickerViewControllerDelegate

- (void)gamePickerViewController:(GamePicker *)controller
                   didSelectGame:(NSString *)theGame
{
	game = theGame;
	self.detailLabel.text = game;
	[self.navigationController popViewControllerAnimated:YES];
}

@end
