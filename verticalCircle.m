//
//  verticalCircle.m
//  AdaptiveRotationTest
//
//  Created by Jiamao Zheng on 7/9/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//

#import "verticalCircle.h"

@implementation verticalCircle

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
    
    CGRect x1Frame = CGRectMake(bounds.size.width/2, 0, 1, bounds.size.height);
    
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(ctx, [UIColor grayColor].CGColor);
    CGContextFillRect(ctx, x1Frame);
    //
    //    UIView *view = [[UIView alloc] initWithFrame:x1Frame];
    //    view.backgroundColor = [UIColor blueColor];
    //
    //    CAShapeLayer *shape = [CAShapeLayer layer];
    //    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:view.center radius:(view.bounds.size.width / 2) startAngle:0 endAngle:(2 * M_PI) clockwise:YES];
    //    shape.path = path.CGPath;
    //    view.layer.mask = shape;
    
//        CGContextRef ct = UIGraphicsGetCurrentContext();
//        CGContextAddEllipseInRect(ct, rect);
//        CGContextSetFillColor(ct, CGColorGetComponents([[UIColor blueColor] CGColor]));
//        CGContextFillPath(ct);
    
}

@end
