//
//  HumzaDetailViewController.h
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RWTRateView.h"

@class RWTScaryBugDoc;

@interface HumzaDetailViewController : UIViewController<UITextFieldDelegate,RWTRateViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) RWTScaryBugDoc *detailItem;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet RWTRateView *rateView;
//@property (weak, nonatomic) IBOutlet UIButton *detailDescriptionLabel;
@property (strong, nonatomic) UIImagePickerController *picker;
- (IBAction)addPictureTapped:(id)sender;
- (IBAction)titleFieldTextChanged:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
