//
//  Parser.m
//  XMLParding
//
//  Created by kashif Saeed on 04/07/2014.
//  Copyright (c) 2014 kashif Saeed. All rights reserved.
//

#import "Parser.h"

@implementation Parser



- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName
    attributes:(NSDictionary *)attributeDict
{
    //frames-main tag,inside it,many multiquests
    if([elementName isEqualToString:@"frames"])
    {
        allMultiQuestArray=[[NSMutableArray alloc]init];
        multiQuestFrameArray=[[NSMutableArray alloc] init];
    }
    
    if ([elementName isEqualToString:@"frame"])
    {
        frameIdString=[attributeDict objectForKey:@"id"];
        NSLog(@"frame id %@",frameIdString);
        
    }
    //Main tag in a particular multiquests
    if([elementName isEqualToString:@"questions"])
    {
        Questions=[[NSMutableArray alloc]init];
        multiQuestNumArray=[[NSMutableArray alloc]init];
        QuestCount= [attributeDict objectForKey:@"totalQestions"];
        // multiquestNum=[attributeDict objectForKey:@"count"];
        NSLog(@"quest count %@",QuestCount);
        
    }
    else if([elementName isEqualToString:@"question"])
    {
        question=[[NSMutableDictionary alloc]init];
        
        frameTypeString=[[NSString alloc]init];
        frameTypeString=[attributeDict objectForKey:@"type"];
        
        [question setValue:frameTypeString forKey:@"type"];
        
        NSLog(@"frameTypeString:%@",frameTypeString);
        
    }
    else if([elementName isEqualToString:@"drag1"])
    {
        [question setValue:[attributeDict objectForKey:@"corrOption"] forKey:@"CorrectOption1"];
    }
    else if([elementName isEqualToString:@"drag2"])
    {
        [question setValue:[attributeDict objectForKey:@"corrOption"] forKey:@"CorrectOption2"];
    }
    
    else if([elementName isEqualToString:@"drag3"])
    {
        [question setValue:[attributeDict objectForKey:@"corrOption"] forKey:@"CorrectOption3"];
    }
    else if([elementName isEqualToString:@"drag4"])
    {
        [question setValue:[attributeDict objectForKey:@"corrOption"] forKey:@"CorrectOption4"];
    }
    
    NSLog(@"Processing Element: %@", elementName);
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    
    currentElementValue=[[NSString alloc]init];
    currentElementValue=[NSString stringWithString:string];
    NSLog(@"Processing Value: %@", currentElementValue);
    
    NSLog(@"Processing Value: %@", currentElementValue);
}  



//Store the whole data in each tag

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    
    
    NSLog(@"frameTypeString:%@",frameTypeString);
    NSLog(@"element name:%@",elementName);
    
    //Store the whole data inside questions tag
    
    if([elementName isEqualToString:@"questions"])
    {
        NSLog(@"frameIdString:%@",frameIdString);
        NSLog(@"Frames in xmlParsing = %@",Questions);
        [multiQuestFrameArray addObject:frameIdString];
        [allMultiQuestArray addObject:Questions];
        [multiQuestNumArray addObject:QuestCount];
        currentElementValue=nil;
        
    }
    
    if([elementName isEqualToString:@"question"])
    {
        
        [Questions addObject:question];
        NSLog(@"frames==:%@",Questions);
        currentElementValue=nil;
    }
    
    
    
    else if([frameTypeString isEqualToString:@"drag_drop"])
    {
        if(![elementName isEqualToString:@"question"])
        {
            NSLog(@"currentElementValue:%@",currentElementValue);
            [question setValue:currentElementValue forKey:elementName];
            NSLog(@"frame dictionary==:%@",question);
            currentElementValue=nil;
        }
    }
    
    
    if ([elementName isEqualToString:@"frame"])
    {
        
        NSLog(@"frame id %@",frameIdString);
        
    }
    
    //Store the whole data inside frames tag
    
    if([elementName isEqualToString:@"frames"])
    {
        NSLog(@"all multi quest array %@",allMultiQuestArray);
        [[NSUserDefaults standardUserDefaults] setObject:allMultiQuestArray forKey:@"MultiQuestKey"];
        [[NSUserDefaults standardUserDefaults] setObject:multiQuestFrameArray forKey:@"MultiQuestFrameArrayKey"];
        [[NSUserDefaults standardUserDefaults] setObject:multiQuestNumArray forKey:@"multiQuestNum"];
        
        return;
        
    }
}
@end
