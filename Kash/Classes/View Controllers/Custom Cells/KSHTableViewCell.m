/**
* Created by Maurício Hanika on 14.12.13.
* Copyright (c) 2013 Maurício Hanika. All rights reserved.
*/

#import <Colours/UIColor+Colours.h>
#import "KSHTableViewCell.h"

////////////////////////////////////////////////////////////////////////////////
@interface KSHTableViewCell ()

@end


////////////////////////////////////////////////////////////////////////////////
@implementation KSHTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if ( self )
    {
        UIFontDescriptor *fontDescriptor =
            [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
        self.textLabel.font = [UIFont fontWithName:@"OpenSans" size:[fontDescriptor pointSize]];
        self.textLabel.textColor = [UIColor charcoalColor];

        UIColor *detailTextColor = nil;
        UIFontDescriptor *detailTextDescriptor = nil;
        switch ( style )
        {
            case UITableViewCellStyleValue1:
            case UITableViewCellStyleValue2:
                detailTextColor = [UIColor charcoalColor];
                detailTextDescriptor =
                    [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
                break;
            default:
                detailTextColor = [UIColor black25PercentColor];
                detailTextDescriptor =
                    [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
                break;
        }
        self.detailTextLabel.font = [UIFont fontWithName:@"OpenSans" size:[detailTextDescriptor pointSize]];
        self.detailTextLabel.textColor = detailTextColor;
    }

    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];

    self.accessoryView = nil;
    self.accessoryType = UITableViewCellAccessoryNone;
}


@end