//
//  JFAArrowView.m
//  JFATabBarController
//
//  Created by Josh Adams on 8/3/14.
//  Copyright (c) 2014 Josh Adams. All rights reserved.
//

#import "JFAArrowView.h"

@interface JFAArrowView ()
@property (nonatomic) BOOL dark;
@property (nonatomic) ArrowDirection arrowDirection;
@end

@implementation JFAArrowView
static const float ANIMATION_DURATION = 0.2f;
static const float ANIMATION_DELAY = 0.0f;
static const CGFloat FADED_IN_ALPHA = 0.7f;
static const CGFloat FADED_OUT_ALPHA = 0.2f;
static const CGFloat ARROW_LEFT = 0.3f;
static const CGFloat ARROW_RIGHT = 0.7f;
static const CGFloat ARROW_TOP = 0.4f;
static const CGFloat ARROW_BOTTOM = 0.6f;

- (JFAArrowView *)initWithDirection:(ArrowDirection)arrowDirection;
{
    self = [super initWithFrame:CGRectMake(0, 0, 0, 0)];
    if (self)
    {
        self.arrowDirection = arrowDirection;
        self.dark = YES;
        if (arrowDirection == ARROW_DIRECTION_LEFT)
        {
            [self fadeOut];
        }
        else
        {
            [self fadeIn];
        }
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)fadeIn
{
    [UIView animateWithDuration:ANIMATION_DURATION
                          delay:ANIMATION_DELAY
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^(void)
    {
        self.alpha = FADED_IN_ALPHA;
    } completion:nil];
    self.dark = YES;
}

- (void)fadeOut
{
    [UIView animateWithDuration:ANIMATION_DURATION
                          delay:ANIMATION_DELAY
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^(void)
     {
         self.alpha = FADED_OUT_ALPHA;
     } completion:nil];
    self.dark = NO;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    return nil;
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath new];
    float width = self.bounds.size.width;
    float height = self.bounds.size.height;
    if (self.arrowDirection == ARROW_DIRECTION_LEFT)
    {
        [path moveToPoint:CGPointMake(width * ARROW_RIGHT, height * ARROW_TOP)];
        [path addLineToPoint:CGPointMake(width * ARROW_LEFT, height / 2)];
        [path addLineToPoint:CGPointMake(width * ARROW_RIGHT, height * ARROW_BOTTOM)];
    }
    else
    {
        [path moveToPoint:CGPointMake(width * ARROW_LEFT, height * ARROW_TOP)];
        [path addLineToPoint:CGPointMake(width * ARROW_RIGHT, height / 2)];
        [path addLineToPoint:CGPointMake(width * ARROW_LEFT, height * ARROW_BOTTOM)];
    }
    [path closePath];
    [[UIColor blackColor] setStroke];
    [path stroke];
    [[UIColor blueColor] setFill];
    [path fill];
}
@end
