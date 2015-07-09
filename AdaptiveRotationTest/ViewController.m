//
//  ViewController.m
//  AdaptiveRotationTest
//
//  Created by Jiamao Zheng on 7/9/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cicle = [[UIView alloc] init];
    self.cicle.backgroundColor = [UIColor blueColor];
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.cicle.center radius:(self.cicle.bounds.size.width / 2) startAngle:0 endAngle:(2 * M_PI) clockwise:YES];
    shape.path = path.CGPath;
    self.cicle.layer.mask = shape;
    
//    [self.icon setFont:[UIFont fontWithName:@"person" size:65]];
//    [self.icon setText:@"3"];
//    self.icon.textColor = [UIColor personBlueColor];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, rect);
    CGContextSetFillColor(ctx, CGColorGetComponents([[UIColor blueColor] CGColor]));
    CGContextFillPath(ctx);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
