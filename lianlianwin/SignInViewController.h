//
//  SignInViewController.h
//  LLY
//
//  Created by apple on 18/9/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignInViewController : UIViewController<UITextFieldDelegate>{
    UITextField *iconTextField1;
    UITextField *iconTextField2;
    
    UIButton *cancelButton1;
    UIButton *cancelButton2;
}

@property(nonatomic,retain)UITextField *iconTextField1;
@property(nonatomic,retain)UITextField *iconTextField2;

@property(nonatomic,retain)UIButton *cancelButton1;
@property(nonatomic,retain)UIButton *cancelButton2;

@end
