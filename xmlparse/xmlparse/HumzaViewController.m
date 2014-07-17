//
//  HumzaViewController.m
//  xmlparse
//
//  Created by kashif Saeed on 05/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HumzaViewController.h"
#import "objects.h"

//#import <libxml2/libxml/tree.h>
//
//#import <libxml2/libxml/tree.h>
//#import <libxml2/libxml/parser.h>
//#import <libxml2/libxml/HTMLparser.h>
//#import <libxml2/libxml/xpath.h>
//#import <libxml2/libxml/xpathInternals.h>


@interface HumzaViewController ()<NSXMLParserDelegate>
{
    NSString *currentElement;
    NSMutableArray *array;
    
    
}

@property (nonatomic,strong) objects *dangerSet;




@end


@implementation HumzaViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    array = [NSMutableArray array];
    self.dangerSet = [objects new];
    
    NSString* filename = [NSString stringWithFormat:@"%@.xml", @"test" ];
    NSString *path = [[[NSBundle mainBundle] bundlePath]stringByAppendingPathComponent:filename];
    
    
    NSURL* url = [NSURL fileURLWithPath: path];
    NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    
    [parser setShouldProcessNamespaces:NO];
    [parser setShouldReportNamespacePrefixes:YES];
    [parser setShouldResolveExternalEntities:YES];
    
    parser.delegate = self;
    [parser parse];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NSXMLParserDelegate

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    
    
    if ([elementName isEqualToString:@"dagensret"]) {
        
        NSLog(@"dagensret start ");
        currentElement = elementName;
    }
    
}

//static int i = 0;


- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"dagensret"])
    {
        objects *temp = [[objects alloc] initWithDangerSet:self.dangerSet];
        NSLog(@"dagensret ended ");
        currentElement = @"";
        
        self.dangerSet = nil;
        
        [array addObject:temp];
        //NSLog(@"dangerSet = %@",self.dangerSet);
    }
}




-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
    static int count = 0;
    
    
    
    NSString *trimStr = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
       if([currentElement isEqualToString:@"dagensret"] && ![trimStr isEqualToString:@"\n"])
    {
        
        if (!_dangerSet) {
            self.dangerSet = [objects new];
        }
        
        if (count == 0 ) {
            self.dangerSet.day = string;
          //  NSLog(@" %@   with count  %d ", string ,count);
            count++;
        }else if (count == 1){
            self.dangerSet.date = string;
        //    NSLog(@" %@   with count  %d ", string ,count);
            count++;
        
        }
        else if (count == 2 )
  
        {
            self.dangerSet.name = string;
            count++;
        //    NSLog(@" %@   with count  %d ", string ,count);
            
        }
        else if (count == 3)
        {
            self.dangerSet.descrip = string;
            count = 0;
        //    NSLog(@" %@   with count  %d ", string ,count);
            
        }
        
        
   //     count++;
        
      //  NSLog(@"Value %@",string);
    }
    
}

-(void)parserDidEndDocument:(NSXMLParser *)parser{
    
    for(objects *a in array){
        NSLog(@" %@" , a.day);
    }
}




//- (void)setDangerSet:(objects *)dangerSet{
//    NSLog(@"At Set");
//
//   // [array addObject:dangerSet];
//    
//}





@end
