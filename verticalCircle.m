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
    NSLog(@"Bounds Height:%f %f", self.bounds.size.height, self.bounds.size.width);
    
    CGRect bounds = self.bounds;
    //the center and radius of the circle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float radius = MIN(bounds.size.width, bounds.size.height) / 3.0;
    
    CGRect x1Frame = CGRectMake(bounds.size.width/2, 0, 1, bounds.size.height);
    
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(ctx, [UIColor grayColor].CGColor);
    CGContextFillRect(ctx, x1Frame);
    
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
