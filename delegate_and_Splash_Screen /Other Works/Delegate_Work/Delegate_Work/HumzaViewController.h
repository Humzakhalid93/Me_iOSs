//
//  HumzaViewController.h
//  Delegate_Work
//
//  Created by kashif Saeed on 18/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "delegateClass.h"

@interface HumzaViewController : UIViewController<SampleProtocolDelegate>{
    
    
    __strong IBOutlet UILabel *myLabel;
    
}

@end
