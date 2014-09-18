//
//  MyCell.h
//  lianlianwin
//
//  Created by apple on 9/9/14.
//  Copyright (c) 2014 ___GWH___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
{
    UILabel *titleLabel;
    UILabel *label1;
    UILabel *label2;
    UILabel *label3;
    UILabel *label4;
}

@property (nonatomic,retain) IBOutlet UILabel *titleLabel;
@property (nonatomic,retain) IBOutlet UILabel *label1;
@property (nonatomic,retain) IBOutlet UILabel *label2;
@property (nonatomic,retain) IBOutlet UILabel *label3;
@property (nonatomic,retain) IBOutlet UILabel *label4;

@end
