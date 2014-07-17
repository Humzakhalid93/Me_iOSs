//
//  GamePicker.m
//  WorkingWithStoryBoard
//
//  Created by kashif Saeed on 14/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "GamePicker.h"

@implementation GamePicker{
    NSArray *games;
    NSUInteger selectedIndex;
}

//
//@synthesize delegate;
//@synthesize game;


//
//- (void)viewDidLoad
//{
//	[super viewDidLoad];
//	games = [NSArray arrayWithObjects:
//             @"Angry Birds",
//             @"Chess",
//             @"Russian Roulette",
//             @"Spin the Bottle",
//             @"Texas Hold’em Poker",
//             @"Tic-Tac-Toe",
//             nil];
//}
//
//- (void)viewDidUnload
//{
//	[super viewDidUnload];
//	games = nil;
//}


- (void)viewDidLoad
{
	[super viewDidLoad];
    
	games = [NSArray arrayWithObjects:
             @"Angry Birds",
             @"Chess",
             @"Russian Roulette",
             @"Spin the Bottle",
             @"Texas Hold'em Poker",
             @"Tic-Tac-Toe",
             nil];
    
	selectedIndex = [games indexOfObject:self.game];
}

- (void)viewDidUnload
{
	[super viewDidUnload];
	games = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}






- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
	return [games count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"GameCell"];
	cell.textLabel.text = [games objectAtIndex:indexPath.row];
    
    if (indexPath.row == selectedIndex)
        cell.accessoryType =  UITableViewCellAccessoryCheckmark;
	else
		cell.accessoryType = UITableViewCellAccessoryNone;
    
    
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
	if (selectedIndex != NSNotFound)
	{
		UITableViewCell *cell = [tableView
                                 cellForRowAtIndexPath:[NSIndexPath
                                                        indexPathForRow:selectedIndex inSection:0]];
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
	selectedIndex = indexPath.row;
	UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
	cell.accessoryType = UITableViewCellAccessoryCheckmark;
	NSString *theGame = [games objectAtIndex:indexPath.row];
    
	[self.delegate gamePickerViewController:self
                              didSelectGame:theGame];
    
}

@end
