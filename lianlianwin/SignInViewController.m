//
//  SignInViewController.m
//  LLY
//
//  Created by apple on 18/9/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "SignInViewController.h"
#import "RegisterViewController.h"
#import "FogetPasswordViewController.h"
#import "MainPageViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

int autoSignIn;
int rememberPassword;

UIImageView *iconImageView3;
UIImageView *iconImageView4;

@synthesize iconTextField1,iconTextField2;
@synthesize cancelButton1,cancelButton2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=YES;
    self.view.backgroundColor=[UIColor colorWithRed:245/255.f green:245/255.f blue:245/255.f alpha:1];
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"zddl"]==nil) {
        [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"0"] forKey:@"zddl"];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"jzmm"]==nil) {
        [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"1"] forKey:@"jzmm"];
    }
    autoSignIn=[[[NSUserDefaults standardUserDefaults] objectForKey:@"zddl"]intValue];
    rememberPassword=[[[NSUserDefaults standardUserDefaults] objectForKey:@"jzmm"]intValue];
    NSLog(@"%drem,%d",autoSignIn,rememberPassword);
    
    //NavigationBar
    UIImageView *topImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 20, 320, 50)];
    topImageView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:topImageView];
    
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, 320, 50)];
    titleLabel.backgroundColor=[UIColor clearColor];
    titleLabel.textAlignment=NSTextAlignmentCenter;
    titleLabel.text=@"登录";
    titleLabel.font=[UIFont boldSystemFontOfSize:18];
    titleLabel.textColor=[UIColor colorWithRed:89/255.f green:89/255.f blue:89/255.f alpha:1];
    [self.view addSubview:titleLabel];
    
    UIImageView *lineImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 21, 320, 1)];
    lineImageView.image=[UIImage imageNamed:@"xk.png"];
    [self.view addSubview:lineImageView];
    
    UIImageView *lineImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 69, 320, 1)];
    lineImageView1.image=[UIImage imageNamed:@"xk.png"];
    [self.view addSubview:lineImageView1];
    
    //textView
    UIImageView *textImageView=[[UIImageView alloc]initWithFrame:CGRectMake(15, 90, 290, 107)];
    textImageView.image=[UIImage imageNamed:@"zck.png"];
    [self.view addSubview:textImageView];
    
    UIImageView *iconImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(22, 102, 29, 29)];
    iconImageView1.image=[UIImage imageNamed:@"sjdl.png"];
    [self.view addSubview:iconImageView1];
    
    UIImageView *iconImageView2=[[UIImageView alloc]initWithFrame:CGRectMake(22, 155.5, 29, 29)];
    iconImageView2.image=[UIImage imageNamed:@"sjmm.png"];
    [self.view addSubview:iconImageView2];
    
    cancelButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton1.frame=CGRectMake(260, 103, 21, 21);
    [cancelButton1 setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
    [cancelButton1 addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    cancelButton1.tag=1;
    [self.view addSubview:cancelButton1];
    
    cancelButton2=[UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton2.frame=CGRectMake(260, 156.5, 21, 21);
    [cancelButton2 setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
    [cancelButton2 addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    cancelButton2.tag=2;
    [self.view addSubview:cancelButton2];
    
    //自动登录 记住密码
    iconImageView3=[[UIImageView alloc]initWithFrame:CGRectMake(15, 205, 22, 22)];
    [self.view addSubview:iconImageView3];
    if (autoSignIn==0) {
        iconImageView3.image=[UIImage imageNamed:@"yq.png"];
    }else{
        iconImageView3.image=[UIImage imageNamed:@"yq_down.png"];
    }
    
    UILabel *iconLabel1=[[UILabel alloc]initWithFrame:CGRectMake(45, 194, 100, 44)];
    iconLabel1.font=[UIFont boldSystemFontOfSize:14];
    iconLabel1.text=@"自动登录";
    iconLabel1.textColor=[UIColor colorWithRed:89/255.f green:89/255.f blue:89/255.f alpha:1];
    [self.view addSubview:iconLabel1];
    
    UIButton *autoButton=[UIButton buttonWithType:UIButtonTypeCustom];
    autoButton.frame=CGRectMake(15, 194, 100, 44);
    [autoButton setBackgroundColor:[UIColor clearColor]];
    [autoButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    autoButton.tag=5;
    [self.view addSubview:autoButton];
    
    //立即登录 注册
    UIButton *signInButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [signInButton setBackgroundColor:[UIColor colorWithRed:253/255.f green:73/255.f blue:119/255.f alpha:1]];
    signInButton.frame=CGRectMake(15, 270, 290, 44);
    [signInButton setTitle:@"立即登录" forState:UIControlStateNormal];
    [signInButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    signInButton.titleLabel.font=[UIFont boldSystemFontOfSize:18];
    [signInButton.layer setMasksToBounds:YES];
    [signInButton.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    [signInButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    signInButton.tag=3;
    [self.view addSubview:signInButton];
    
    UIButton *registerButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerButton setBackgroundColor:[UIColor colorWithRed:253/255.f green:73/255.f blue:119/255.f alpha:1]];
    registerButton.frame=CGRectMake(15, 340, 290, 44);
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    registerButton.titleLabel.font=[UIFont boldSystemFontOfSize:18];
    [registerButton.layer setMasksToBounds:YES];
    [registerButton.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    [registerButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    registerButton.tag=4;
    [self.view addSubview:registerButton];
    
    UIButton *fogetPasswordButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [fogetPasswordButton setBackgroundColor:[UIColor clearColor]];
    fogetPasswordButton.frame=CGRectMake(230, self.view.bounds.size.height-50, 70, 44);
    [fogetPasswordButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    [fogetPasswordButton setTitleColor:[UIColor colorWithRed:253/255.f green:73/255.f blue:119/255.f alpha:1] forState:UIControlStateNormal];
    fogetPasswordButton.titleLabel.font=[UIFont boldSystemFontOfSize:16];
    [fogetPasswordButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    fogetPasswordButton.tag=7;
    [self.view addSubview:fogetPasswordButton];
    
    cancelButton1.hidden=YES;
    cancelButton2.hidden=YES;
   
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillChange:)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:nil];
    
    iconTextField1=[[UITextField alloc]initWithFrame:CGRectMake(60, 98, 200, 40)];
    iconTextField1.backgroundColor=[UIColor clearColor];
    iconTextField1.keyboardType=UIKeyboardTypeNumberPad;
    iconTextField1.font=[UIFont boldSystemFontOfSize:18];
    iconTextField1.delegate=self;
    iconTextField1.placeholder=@"手机号码";
    [self.view addSubview:iconTextField1];
    
    iconTextField2=[[UITextField alloc]initWithFrame:CGRectMake(60, 151.5, 200, 40)];
    iconTextField2.backgroundColor=[UIColor clearColor];
    iconTextField2.keyboardType=UIKeyboardTypeDefault;
    iconTextField2.font=[UIFont boldSystemFontOfSize:18];
    iconTextField2.secureTextEntry=YES;
    iconTextField2.delegate=self;
    iconTextField2.placeholder=@"密码";
    [self.view addSubview:iconTextField2];
    
    UIToolbar * topView = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
    [topView setBarStyle:UIBarStyleBlack];
    UIBarButtonItem * btnSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc]initWithTitle:@"确定" style:UIBarButtonItemStyleDone target:self action:@selector(textFieldShouldReturn:)];
    NSArray * buttonsArray = [NSArray arrayWithObjects:btnSpace,doneButton,nil];
    [topView setItems:buttonsArray];
    [iconTextField1 setInputAccessoryView:topView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillChange:)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:nil];
}

- (void)viewWillAppear:(BOOL)animated{

}

- (void)viewWillDisappear:(BOOL)animated{

}

//keyBoard
- (void)keyboardWillShow:(NSNotification *)notification{

    if (iconTextField1.text.length==0) {
        cancelButton1.hidden=YES;
    }else{
        cancelButton1.hidden=NO;
    }
    if (iconTextField2.text.length==0) {
        cancelButton2.hidden=YES;
    }else{
        cancelButton2.hidden=NO;
    }
}

- (void)keyboardWillBeHidden:(NSNotification *)notification{

    cancelButton1.hidden=YES;
    cancelButton2.hidden=YES;
}

- (void)keyboardWillChange:(NSNotification *)notification{
    if (iconTextField1.text.length==0) {
        cancelButton1.hidden=YES;
    }else{
        cancelButton1.hidden=NO;
    }
    if (iconTextField2.text.length==0) {
        cancelButton2.hidden=YES;
    }else{
        cancelButton2.hidden=NO;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [iconTextField1 resignFirstResponder];
    [iconTextField2 resignFirstResponder];
    return YES;
}

- (void)buttonTaped:(id)sender{
    UIButton *button=(UIButton*)sender;
    if (button.tag==1) {
        iconTextField1.text=@"";
        cancelButton1.hidden=YES;
    }else if (button.tag==2){
        iconTextField2.text=@"";
        cancelButton2.hidden=YES;
    }else if (button.tag==3){
        NSLog(@"signin");
        MainPageViewController *mainPage=[[MainPageViewController alloc]init];
        [self.navigationController pushViewController:mainPage animated:YES];
    }else if (button.tag==4){
        NSLog(@"register");
        RegisterViewController *registerViewController=[[RegisterViewController alloc]init];
        [self.navigationController pushViewController:registerViewController animated:YES];
    }else if (button.tag==5){
        NSLog(@"auto");
        if (autoSignIn==1) {
            autoSignIn=0;
            iconImageView3.image=[UIImage imageNamed:@"yq.png"];
            [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"0"] forKey:@"zddl"];
        }else{
            autoSignIn=1;
            iconImageView3.image=[UIImage imageNamed:@"yq_down.png"];
            [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"1"] forKey:@"zddl"];
        }
    }else if (button.tag==6){
        NSLog(@"remember");
        if (rememberPassword==1) {
            rememberPassword=0;
            iconImageView4.image=[UIImage imageNamed:@"yq.png"];
            [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"0"] forKey:@"jzmm"];
        }else{
            rememberPassword=1;
            iconImageView4.image=[UIImage imageNamed:@"yq_down.png"];
            [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"1"] forKey:@"jzmm"];
        }
    }else if (button.tag==7){
        NSLog(@"foget");
        FogetPasswordViewController *foget=[[FogetPasswordViewController alloc]init];
        [self.navigationController pushViewController: foget animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
