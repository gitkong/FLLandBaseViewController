//
//  SecondViewController.m
//  FLLandBaseViewController(OC)
//
//  Created by clarence on 16/9/9.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"我里面什么都不用处理了~~~");
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width - 300, 100, 300, 30)];
    label.text = @"小咧咧 clarence";
    [self.view addSubview:label];
}

@end
