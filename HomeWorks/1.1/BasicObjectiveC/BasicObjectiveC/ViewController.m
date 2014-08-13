//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"

static NSMutableArray *ques;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    
    // 1
    NSDictionary *dict1 = @{
                            @"domain": @"mixi.jp",
                            @"entry":  @[@"list_voice.pl", @"list_diary.pl", @"list_mymall_item.pl"]
                            };
    NSDictionary *dict2 = @{
                            @"domain": @"mmall.jp",
                            @"entry":  @[@{
                                            @"path":  @"add_diary.pl",
                                             @"query": @{ @"tag_id": @"7"}
                                        }]
                            };
    NSDictionary *dict3 = @{
                            @"domain": @"itunes.apple.com",
                            };
    
    
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:@[dict1, dict2]];
    [mutableArray addObject:dict3];

    //NSLog(@"%@", mutableArray);


    // 2
    ques = [NSMutableArray arrayWithArray:@[]];
    [self push:@"1"];
    [self push:@"2"];
    [self push:@"3"];
    [self push:@"4"];
    [self push:@"5"];
    
    NSLog(@"count:%d", [self size]);
    NSLog(@"pop:  %@", [self pop]);
    NSLog(@"count:%d", [self size]);
    NSLog(@"pop  :%@", [self pop]);
    NSLog(@"count:%d", [self size]);
    NSLog(@"pop  :%@", [self pop]);
    NSLog(@"pop  :%@", [self pop]);
    NSLog(@"pop  :%@", [self pop]);
    NSLog(@"count:%d", [self size]);
}

- (void)push:(id)object
{
    [ques addObject:object];
}

- (id)pop
{
    if (ques.count == 0) {
        return nil;
    }
    
    id obj = ques[0];
    [ques removeObjectAtIndex:0];
    return obj;
}

- (NSInteger)size
{
    return ques.count;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
