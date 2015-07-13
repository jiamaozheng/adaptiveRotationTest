//
//  ViewController.m
//  AdaptiveRotationTest
//
//  Created by Jiamao Zheng on 7/9/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//

#import "ViewController.h"
#import "circle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.cicle.autoresizingMask = self.view.autoresizingMask;
    
//    [self.icon setFont:[UIFont fontWithName:@"person" size:65]];
//    [self.icon setText:@"3"];
//    self.icon.textColor = [UIColor personBlueColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillLayoutSubviews{
    //    [super viewWillLayoutSubviews];
    //    self.view.superview.layer.cornerRadius  = 10.0;
    //    self.view.superview.layer.masksToBounds = YES;
    //    self.view.superview.bounds = CGRectMake(0, 0, 300, 250);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
