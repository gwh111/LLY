//
//  MyCell_MemberCenter.h
//  LLY
//
//  Created by apple on 7/10/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell_MemberCenter : UITableViewCell{
    UILabel *titleLabel;
    UILabel *contentLabel;
    UIImageView *titleImageView;
}

@property (nonatomic,retain) IBOutlet UILabel *titleLabel;
@property (nonatomic,retain) IBOutlet UILabel *contentLabel;
@property (nonatomic,retain) IBOutlet UIImageView *titleImageView;

@end
