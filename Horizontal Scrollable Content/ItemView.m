//
//  ItemView.m
//  Horizontal Scrollable Content
//
//  Created by Nuhil Mehdy on 4/29/13.
//  Copyright (c) 2013 Nuhil Mehdy. All rights reserved.
//

#import "ItemView.h"

@implementation ItemView

@synthesize itemName = _itemName;
@synthesize itemImage = _itemImage;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
