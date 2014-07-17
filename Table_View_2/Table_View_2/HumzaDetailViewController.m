//
//  HumzaDetailViewController.m
//  Table_View_2
//
//  Created by kashif Saeed on 17/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaDetailViewController.h"
#import "RWTScaryBugDoc.h"
#import "RWTScaryBugData.h"
#import "RWTUIImageExtras.h"

//@class RWTScaryBugDoc;


@interface HumzaDetailViewController ()
- (void)configureView;
@end

@implementation HumzaDetailViewController

@synthesize picker = _picker;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    self.rateView.notSelectedImage = [UIImage imageNamed:@"shockedface2_empty.png"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"shockedface2_half.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"shockedface2_full.png"];
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
    
    if (self.detailItem) {

       // self.detailDescriptionLabel.text = [self.detailItem description];
        self.titleField.text = self.detailItem.data.Title;
        self.rateView.rating  = self.detailItem.data.Rating;
        self.imageView.image = self.detailItem.fullImage;
        
    }


}



- (void)titleFieldTextChanged:(id)sender{
    
    self.detailItem.data.Title = self.titleField.text;
}


#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return  YES;
}


#pragma mark RWTRateViewDelegate

- (void)rateView:(RWTRateView *)rateView ratingDidChange:(float)rating{
    self.detailItem.data.Rating = rating;
    
}






- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPictureTapped:(id)sender {
    
    
    if (self.picker == nil) {
        self.picker = [[UIImagePickerController alloc]init];
        self.picker.delegate = self;
        self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.picker.allowsEditing = NO;
        
    }
    
    [self presentViewController:_picker animated:YES completion:nil];
    
    
    
}

//
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
//    return  YES;
//    
//}


#pragma mark UIImagePickerControllerDelegate


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    
    UIImage *thumbImage =[fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    
    self.detailItem.fullImage = fullImage;
    self.detailItem.thumbImage = thumbImage;
    self.imageView.image = fullImage;
    
}





@end





































