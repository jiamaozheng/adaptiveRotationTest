//
//  circle.m
//  AdaptiveRotationTest
//
//  Created by Jiamao Zheng on 7/9/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
// http://stackoverflow.com/questions/24954735/xcode-draw-circle-around-centre

#import "circle.h"
#import <QuartzCore/QuartzCore.h>

@implementation circle

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
    float radius = MIN(bounds.size.width, bounds.size.height) / 5.0;
    
    CGRect x1FrameL = CGRectMake(bounds.origin.x, bounds.origin.y + bounds.size.height/2, bounds.size.width/2 - radius, 1);
    CGRect x1FrameR = CGRectMake(bounds.origin.x + center.x + radius, bounds.origin.y + bounds.size.height/2, bounds.size.width/2 - radius, 1);

    CGContextRef ctxL = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctxL, [UIColor grayColor].CGColor);
    CGContextFillRect(ctxL, x1FrameL);
    
    CGContextRef ctxR = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctxR, [UIColor grayColor].CGColor);
    CGContextFillRect(ctxR, x1FrameR);
    
    
    CGFloat rectX = self.frame.size.width / 2;
    CGFloat rectY = self.frame.size.height / 2;
    CGFloat width = 100;
    CGFloat height = 100;
    CGFloat centerX = rectX - width/2;
    CGFloat centerY = rectY - height/2;
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(centerX, centerY, width, height)];
    [[UIColor grayColor] set];
    [bezierPath stroke];
    
    
//    //the center and radius of the circle
//    CGPoint center;
//    center.x = bounds.origin.x + bounds.size.width / 2.0;
//    center.y = bounds.origin.y + bounds.size.height / 2.0;
//    float radius = MIN(bounds.size.width, bounds.size.height) / 5.0;
    
//    //draw the first green circle
//    UIBezierPath *path = [[UIBezierPath alloc]init];
//    [path addArcWithCenter:center radius:radius - 10 startAngle:0 endAngle:M_PI*2.0 clockwise:YES];
//    path.lineWidth = 1;
//    [[UIColor grayColor] setStroke];
//    [path stroke];
//
//    //draw the second red circle
//    UIBezierPath *secondPath = [[UIBezierPath alloc]init];
//    [secondPath addArcWithCenter:center radius:radius -30 startAngle:0 endAngle:M_PI*2.0 clockwise:YES];
//    secondPath.lineWidth = 10;
//    [[UIColor redColor] setStroke];
//    [secondPath stroke];
    
    CGRect label2Frame = CGRectMake(center.x - radius, center.y - 30, 2*radius, 2*radius);
    
    UILabel *closedIssues = [[UILabel alloc]initWithFrame:label2Frame];
    closedIssues.text = @"OR";
    closedIssues.textColor = [UIColor grayColor];
    closedIssues.textAlignment = NSTextAlignmentCenter;
    closedIssues.numberOfLines = 0;
    
    [self addSubview:closedIssues];
    
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    
}

@end
