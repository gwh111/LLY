//
//  MyCell_MemberCenter.m
//  LLY
//
//  Created by apple on 7/10/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "MyCell_MemberCenter.h"

@implementation MyCell_MemberCenter

@synthesize titleImageView,titleLabel,contentLabel;

- (void)awakeFromNib
{
    // Initialization code
    [titleLabel setTextColor:[UIColor whiteColor]];
    [titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
    titleLabel.textAlignment=NSTextAlignmentCenter;
    
    contentLabel.textColor=[UIColor grayColor];
    contentLabel.font=[UIFont systemFontOfSize:12];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
