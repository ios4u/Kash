/**
* Created by Maurício Hanika on 29.09.13.
* Copyright (c) 2013 Maurício Hanika. All rights reserved.
*/

#import <Foundation/Foundation.h>
#import "KSHTableViewCell.h"

@class KSHAccount;

@interface KSHAccountCell : KSHTableViewCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (void)setAccount:(KSHAccount *)account;

@end