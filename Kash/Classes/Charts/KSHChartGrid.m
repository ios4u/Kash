/**
* Created by Maurício Hanika on 21.12.13.
* Copyright (c) 2013 Maurício Hanika. All rights reserved.
*/

#import "KSHChartGrid.h"
#import "UIColor+Colours.h"

////////////////////////////////////////////////////////////////////////////////
@interface KSHChartGrid ()

@end


////////////////////////////////////////////////////////////////////////////////
@implementation KSHChartGrid

- (id)init
{
    self = [super init];

    if ( self != nil )
    {
        _tickOffset = 5.f;

        _showsHorizontalLines = YES;
        _showsVerticalLines = NO;

        _lineColor = [UIColor colorWithWhite:.875f alpha:1.f];
        _lineWidth = 1.f;
    }

    return self;
}


- (void)drawInRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);

    [_lineColor setFill];

    // Draw horizontal lines
    if ( _showsHorizontalLines )
    {
        CGFloat horizontalDelta = [_majorHorizontalDelta floatValue];
        for ( int i = 0, j = ( int ) ceil(CGRectGetHeight(rect) / horizontalDelta); i < j; i++ )
        {
            CGRect line = CGRectMake(
                CGRectGetMinX(rect),
                CGRectGetMinY(rect) + CGRectGetHeight(rect) - _tickOffset - (i * horizontalDelta),
                CGRectGetWidth(rect),
                _lineWidth
            );
            CGContextFillRect(context, line);
        }
    }

    // Draw vertical lines
    if ( _showsVerticalLines )
    {
        CGFloat verticalDelta = [_majorVerticalDelta floatValue];
        for ( int i = 0, j = ( int ) ceil(CGRectGetWidth(rect) / verticalDelta); i < j; i++ )
        {
            CGRect line = CGRectMake(
                CGRectGetMinX(rect) + _tickOffset + (i * verticalDelta),
                CGRectGetMinY(rect),
                _lineWidth,
                CGRectGetHeight(rect)
            );
            CGContextFillRect(context, line);
        }
    }

    CGContextRestoreGState(context);
}

@end