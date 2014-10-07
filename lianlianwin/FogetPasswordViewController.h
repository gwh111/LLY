//
//  FogetPasswordViewController.h
//  LLY
//
//  Created by apple on 23/9/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FogetPasswordViewController : UIViewController<UITextFieldDelegate>{
    UITextField *iconTextField1;
    UITextField *iconTextField2;
    UITextField *iconTextField3;
    UITextField *iconTextField4;
    
    UIButton *cancelButton1;
    UIButton *cancelButton2;
    UIButton *cancelButton3;
    UIButton *cancelButton4;
}

@property(nonatomic,retain)UITextField *iconTextField1;
@property(nonatomic,retain)UITextField *iconTextField2;
@property(nonatomic,retain)UITextField *iconTextField3;
@property(nonatomic,retain)UITextField *iconTextField4;

@property(nonatomic,retain)UIButton *cancelButton1;
@property(nonatomic,retain)UIButton *cancelButton2;
@property(nonatomic,retain)UIButton *cancelButton3;
@property(nonatomic,retain)UIButton *cancelButton4;

@end
