//
//  HumzaViewController.m
//  OwxParser
//
//  Created by kashif Saeed on 07/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaViewController.h"
#import "tags.h"


@interface HumzaViewController () <NSXMLParserDelegate>
{
    NSMutableArray *arr;
    tags *obj;
    NSString *str;
}
@end

@implementation HumzaViewController

- (void)viewDidLoad
{
  
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    arr = [NSMutableArray array];
    obj = [tags new];
    
    
    NSString *filename = [NSString stringWithFormat:@"%@.xml",@"test"];
    NSString *path = [[[NSBundle mainBundle] bundlePath ]stringByAppendingPathComponent: filename];
    
    NSURL *url = [NSURL fileURLWithPath:path];
    NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    
    parser.delegate = self ;
    [parser parse];
    
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    if ([elementName isEqualToString:@"dagensret"]) {
        str = elementName;
    }
    
    
    
}
static int i = 0;

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    if ([elementName isEqualToString:@"dagensret"])
    {
        NSLog(@"dagensret ended ");
        str = @"";
        arr[i++] = obj;
    }
    
    
    
}


- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
static int count = 0;
    NSString *temp = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if ([str isEqualToString:@"dagensret"]  && ![temp isEqualToString:@"\n"]) {
        if (count == 0) {
            obj.day = string;
            NSLog(@" %@   with count  %d ", string ,count);
            
        }
        else if (count == 1)
        {
            obj.date = string;
           
            NSLog(@" %@   with count  %d ", string ,count);
            
        }

        else if (count == 2)
        {
            obj.name = string;
           
            NSLog(@" %@   with count  %d ", string ,count);
            
        }

        else if (count == 3){
            
            obj.desc = string;
            NSLog(@" %@   with count  %d ", string ,count);
            
            count = 0;
        }
        count++;
        
    }


}




- (void)parserDidEndDocument:(NSXMLParser *)parser
{
    static int j = 0;
    for (tags *a in arr ){
        
        NSLog(@"Incrementator is = %d" , j);
     //   NSLog(@"%@",a.day);
    
     //   NSLog(@"%@",a.date);

     //   NSLog(@"%@",a.name);

    //    NSLog(@"%@",a.desc);
        j++;
        
    }

}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
