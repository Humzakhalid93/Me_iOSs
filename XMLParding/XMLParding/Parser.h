//
//  Parser.h
//  XMLParding
//
//  Created by kashif Saeed on 04/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "List.h"

@interface Parser : NSObject <NSXMLParserDelegate >
{
 //   AppDelegate *app;
   // List *theList;
    //NSMutableString *currentValue;


    NSString *currentElementValue;
    NSMutableArray * Questions;
    NSMutableDictionary * question;
    NSString * QuestCount,*frameIdString,*frameTypeString;
    NSMutableArray *allMultiQuestArray;
    NSMutableArray *multiQuestFrameArray;
    NSMutableArray *multiQuestNumArray;
    NSString *multiquestNum;

}
@property(nonatomic,retain)NSString *currentElementValue;
//-(id) initParser;

@end
