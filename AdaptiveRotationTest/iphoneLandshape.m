//
//  iphoneLandshape.m
//  AdaptiveRotationTest
//
//  Created by Jiamao Zheng on 7/13/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//

#import "iphoneLandshape.h"

@implementation iphoneLandshape

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    NSLog(@"Bounds Height:%f %f", self.bounds.size.height, self.bounds.size.width);
    
    CGRect bounds = self.bounds;
    //the center and radius of the circle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float radius = MIN(bounds.size.width, bounds.size.height) /1.5;
    
    CGRect x1FrameL = CGRectMake(bounds.origin.x, bounds.origin.y + bounds.size.height/2, bounds.size.width, 1);
    //    CGRect x1FrameR = CGRectMake(bounds.origin.x + center.x + radius, bounds.origin.y + bounds.size.height/2, bounds.size.width/2 - radius, 1);
    
    CGContextRef ctxL = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctxL, [UIColor grayColor].CGColor);
    CGContextFillRect(ctxL, x1FrameL);
    
    //draw the first green circle
    UIBezierPath *path = [[UIBezierPath alloc]init];
    [path addArcWithCenter:center radius:radius - 10 startAngle:0 endAngle:M_PI*2.0 clockwise:YES];
    path.lineWidth = 1;
    [[UIColor grayColor] setStroke];
    [path stroke];
    
    CGRect label2Frame = CGRectMake(center.x - radius, center.y - 30, 2*radius, 2*radius);
    
    UILabel *closedIssues = [[UILabel alloc]initWithFrame:label2Frame];
    closedIssues.text = @"OR";
    closedIssues.textColor = [UIColor grayColor];
    closedIssues.textAlignment = NSTextAlignmentCenter;
    closedIssues.numberOfLines = 0;
    
    [self addSubview:closedIssues];
    
}

@end
