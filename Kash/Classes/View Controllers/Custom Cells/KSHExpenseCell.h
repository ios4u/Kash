/**
* Created by Maurício Hanika on 10.11.13.
* Copyright (c) 2013 Maurício Hanika. All rights reserved.
*/

#import <Foundation/Foundation.h>
#import "KSHTableViewCell.h"

@class KSHExpense;
@interface KSHExpenseCell : KSHTableViewCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (void)setExpense:(KSHExpense *)expense;

@end