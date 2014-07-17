//
//  PlayersViewController.m
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 08/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "PlayersViewController.h"
#import "Player.h"
#import "PlayerCell.h"
#import "PlayerDetailsViewController.h"

@implementation PlayersViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.player count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//	UITableViewCell *cell = [tableView
  //                           dequeueReusableCellWithIdentifier:@"PlayerCell"];
	
    /* To read statically
    Player *players = [self.player objectAtIndex:indexPath.row];
	cell.textLabel.text = players.name;
	cell.detailTextLabel.text = players.game;
    return cell; */
    
    //For dynamically
   /* Player *player = [self.player objectAtIndex:indexPath.row];
	UILabel *nameLabel = (UILabel *)[cell viewWithTag:100];
	nameLabel.text = player.name;
	UILabel *gameLabel = (UILabel *)[cell viewWithTag:101];
	gameLabel.text = player.game;
	UIImageView * ratingImageView = (UIImageView *)
    [cell viewWithTag:102];
	ratingImageView.image = [self imageForRating:player.rating];
    return cell;
    */
    
   
    
    
    PlayerCell *cell = (PlayerCell *)[tableView
                                          dequeueReusableCellWithIdentifier:@"PlayerCell"];
        Player *player = [self.player objectAtIndex:indexPath.row];
        cell.nameLabel.text = player.name;
        cell.gameLabel.text = player.game;
        cell.ratingImageView.image = [self
                                      imageForRating:player.rating];
        return cell;
    
    
}


- (UIImage *)imageForRating:(int)rating
{
	switch (rating)
	{
		case 1: return [UIImage imageNamed:@"1StarSmall.png"];
		case 2: return [UIImage imageNamed:@"2StarsSmall.png"];
		case 3: return [UIImage imageNamed:@"3StarsSmall.png"];
		case 4: return [UIImage imageNamed:@"4StarsSmall.png"];
		case 5: return [UIImage imageNamed:@"5StarsSmall.png"];
	}
	return nil;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (editingStyle == UITableViewCellEditingStyleDelete)
	{
		[self.player removeObjectAtIndex:indexPath.row];
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
	}
}





#pragma mark - PlayerDetailsViewControllerDelegate


- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player{
  
    [self.player addObject:player];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.player count] -1 inSection:0];
    
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                          withRowAnimation:UITableViewRowAnimationAutomatic];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

//- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller{
//    [self dismissViewControllerAnimated:YES completion:nil];
//    
//}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"AddPlayer"]){
        
        UINavigationController *navigte = segue.destinationViewController;
        PlayerDetailsViewController *playerDetails = [[navigte viewControllers] objectAtIndex:0];
        
        playerDetails.delegate = self;
        
}
    
    
}

/*- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        [self.n]
    }
    
}
*/
@end
