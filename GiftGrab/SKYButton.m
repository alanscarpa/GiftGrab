//
//  SKYButton.m
//  GiftGrab
//
//  Created by Alan Scarpa on 10/17/15.
//  Copyright © 2015 Skytop Designs. All rights reserved.
//

#import "SKYButton.h"

@implementation SKYButton

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit {
    self.layer.cornerRadius = 8;
}

@end
