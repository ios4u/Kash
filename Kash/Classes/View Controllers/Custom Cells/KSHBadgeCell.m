/**
* Created by Maurício Hanika on 18.10.13.
* Copyright (c) 2013 Maurício Hanika. All rights reserved.
*/

#import <QuartzCore/QuartzCore.h>
#import "KSHBadgeCell.h"

////////////////////////////////////////////////////////////////////////////////
@interface KSHBadgeCell ()

@end


////////////////////////////////////////////////////////////////////////////////
@implementation KSHBadgeCell
{
    UIImageView *_badgeImageView;
}

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];

    if ( self != nil )
    {
        UIImage *image = [[UIImage imageNamed:@"red-circle.png"]
            resizableImageWithCapInsets:UIEdgeInsetsMake(11.f, 11.f, 10.f, 10.f)];
        _badgeImageView = [[UIImageView alloc] initWithImage:image];
        [self.contentView addSubview:_badgeImageView];

        _badgeLabel = [[UILabel alloc] initWithFrame:_badgeImageView.bounds];
        _badgeLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
        _badgeLabel.textAlignment = NSTextAlignmentCenter;
        _badgeLabel.textColor = [UIColor whiteColor];
        _badgeLabel.shadowColor = [UIColor colorWithWhite:.0f alpha:.667f];
        _badgeLabel.shadowOffset = CGSizeMake(.0f, 1.f);
        [_badgeImageView addSubview:_badgeLabel];
    }

    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    [_badgeLabel sizeToFit];
    CGRect frame = CGRectMake(
        CGRectGetMaxX(self.contentView.bounds) - CGRectGetWidth(_badgeLabel.frame) - 10.f,
        (CGRectGetHeight(self.contentView.bounds) - CGRectGetHeight(_badgeLabel.frame) - 4.f) / 2.f,
        CGRectGetWidth(_badgeLabel.frame) + 10.f,
        CGRectGetHeight(_badgeLabel.frame) + 4.f
    );

    _badgeImageView.frame = CGRectIntegral(frame);
    _badgeLabel.center = CGPointMake(
        roundf(CGRectGetWidth(_badgeImageView.bounds) / 2.f),
        roundf(CGRectGetHeight(_badgeImageView.bounds) / 2.f)
    );
}

@end