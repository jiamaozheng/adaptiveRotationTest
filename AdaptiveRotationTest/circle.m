//
//  circle.m
//  AdaptiveRotationTest
//
//  Created by Jiamao Zheng on 7/9/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//

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
    CGRect bounds = self.bounds;
    CGPoint sizeLocation;
    sizeLocation.x = (bounds.origin.x + bounds.size.width) / 3.0;
    sizeLocation.y = (bounds.origin.y + bounds.size.height) / 5.0;
    
    CGRect x1Frame = CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.width, 1);

    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(ctx, 0, 0, 255, 1);
    CGContextFillRect(ctx, x1Frame);
//
//    UIView *view = [[UIView alloc] initWithFrame:x1Frame];
//    view.backgroundColor = [UIColor blueColor];
//    
//    CAShapeLayer *shape = [CAShapeLayer layer];
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:view.center radius:(view.bounds.size.width / 2) startAngle:0 endAngle:(2 * M_PI) clockwise:YES];
//    shape.path = path.CGPath;
//    view.layer.mask = shape;
    
//    CGContextRef ct = UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(ct, rect);
//    CGContextSetFillColor(ct, CGColorGetComponents([[UIColor blueColor] CGColor]));
//    CGContextFillPath(ct);
    
}

@end
