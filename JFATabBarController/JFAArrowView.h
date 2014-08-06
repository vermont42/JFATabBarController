//
//  JFAArrowView.h
//  JFATabBarController
//
//  Created by Josh Adams on 8/3/14.
//  Copyright (c) 2014 Josh Adams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JFAArrowView : UIView
typedef enum
{
	ARROW_DIRECTION_LEFT = 0,
	ARROW_DIRECTION_RIGHT = 1,
} ArrowDirection;
- (JFAArrowView *)initWithDirection:(ArrowDirection)arrowDirection;
- (void)fadeIn;
- (void)fadeOut;
@end
