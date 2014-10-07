//
//  FogetPasswordViewController.m
//  LLY
//
//  Created by apple on 23/9/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "FogetPasswordViewController.h"

@interface FogetPasswordViewController ()

@end

@implementation FogetPasswordViewController


UIView *myView;
UIButton *getIdButton;
UILabel *iconLabel1_1;
NSTimer *idTimer;
int getTimer;

@synthesize iconTextField1,iconTextField2,iconTextField3,iconTextField4;
@synthesize cancelButton1,cancelButton2,cancelButton3,cancelButton4;

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
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBarHidden=YES;
    self.view.backgroundColor=[UIColor colorWithRed:245/255.f green:245/255.f blue:245/255.f alpha:1];
    
    myView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, self.view.bounds.size.height)];
    myView.backgroundColor=[UIColor colorWithRed:245/255.f green:245/255.f blue:245/255.f alpha:1];
    [self.view addSubview:myView];
    
    //NavigationBar
    UIImageView *topImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 70)];
    topImageView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:topImageView];
    
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, 320, 50)];
    titleLabel.backgroundColor=[UIColor clearColor];
    titleLabel.textAlignment=NSTextAlignmentCenter;
    titleLabel.text=@"忘记登录密码";
    titleLabel.font=[UIFont boldSystemFontOfSize:18];
    titleLabel.textColor=[UIColor colorWithRed:89/255.f green:89/255.f blue:89/255.f alpha:1];
    [self.view addSubview:titleLabel];
    
    UIImageView *lineImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 21, 320, 1)];
    lineImageView.image=[UIImage imageNamed:@"xk.png"];
    [self.view addSubview:lineImageView];
    
    UIImageView *lineImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 69, 320, 1)];
    lineImageView1.image=[UIImage imageNamed:@"xk.png"];
    [self.view addSubview:lineImageView1];
    
    UIImageView *backImageView=[[UIImageView alloc]initWithFrame:CGRectMake(10, 30, 27, 27)];
    backImageView.image=[UIImage imageNamed:@"xq.png"];
    [self.view addSubview:backImageView];
    
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    backButton.backgroundColor=[UIColor clearColor];
    backButton.frame=CGRectMake(0, 20, 80, 50);
    [backButton addTarget:self action:@selector(backButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    //TextView
    UIImageView *textImageView=[[UIImageView alloc]initWithFrame:CGRectMake(15, 90, 290, 50)];
    textImageView.image=[UIImage imageNamed:@"zck3.png"];
    [myView addSubview:textImageView];
    
    UIImageView *iconImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(15, 150, 145, 50)];
    iconImageView1.image=[UIImage imageNamed:@"zck3.png"];
    [myView addSubview:iconImageView1];
    
    UIImageView *iconImageView1_1=[[UIImageView alloc]initWithFrame:CGRectMake(160, 150, 145, 50)];
    iconImageView1_1.backgroundColor=[UIColor colorWithRed:204/255.f green:204/255.f blue:204/255.f alpha:1];
    [myView addSubview:iconImageView1_1];
    
    getIdButton=[UIButton buttonWithType:UIButtonTypeCustom];
    getIdButton.frame=CGRectMake(160, 150, 145, 50);
    [getIdButton setBackgroundColor:[UIColor colorWithRed:204/255.f green:204/255.f blue:204/255.f alpha:1]];
    [getIdButton setTitle:@"" forState:UIControlStateNormal];
    [getIdButton setTitleColor:[UIColor colorWithRed:133/255.f green:133/255.f blue:133/255.f alpha:1] forState:UIControlStateNormal];
    getIdButton.tag=5;
    [myView addSubview:getIdButton];
    [getIdButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    
    iconLabel1_1=[[UILabel alloc]initWithFrame:CGRectMake(160, 150, 145, 50)];
    iconLabel1_1.textColor=[UIColor colorWithRed:133/255.f green:133/255.f blue:133/255.f alpha:1];
    iconLabel1_1.text=@"获取验证码";
    iconLabel1_1.textAlignment=NSTextAlignmentCenter;
    [myView addSubview:iconLabel1_1];
    
    UIImageView *iconImageView2=[[UIImageView alloc]initWithFrame:CGRectMake(15, 210, 290, 50)];
    iconImageView2.image=[UIImage imageNamed:@"zck3.png"];
    [myView addSubview:iconImageView2];
    
    UILabel *textLabel=[[UILabel alloc]initWithFrame:CGRectMake(25, 270, 180, 40)];
    textLabel.text=@"必须是6位以上的字母或数字";
    textLabel.textColor=[UIColor grayColor];
    textLabel.backgroundColor=[UIColor clearColor];
    textLabel.font=[UIFont systemFontOfSize:12];
    [myView addSubview:textLabel];
    
    UIImageView *iconImageView3=[[UIImageView alloc]initWithFrame:CGRectMake(15, 300, 290, 50)];
    iconImageView3.image=[UIImage imageNamed:@"zck3.png"];
    [myView addSubview:iconImageView3];
    
    iconTextField1=[[UITextField alloc]initWithFrame:CGRectMake(30, 97, 200, 40)];
    iconTextField1.backgroundColor=[UIColor clearColor];
    iconTextField1.keyboardType=UIKeyboardTypeNumberPad;
    iconTextField1.font=[UIFont boldSystemFontOfSize:16];
    iconTextField1.placeholder=@"请输入您的手机号码";
    iconTextField1.delegate=self;
    iconTextField1.tag=1;
    [myView addSubview:iconTextField1];
    
    iconTextField2=[[UITextField alloc]initWithFrame:CGRectMake(30, 157, 100, 40)];
    iconTextField2.backgroundColor=[UIColor clearColor];
    iconTextField2.keyboardType=UIKeyboardTypeNumberPad;
    iconTextField2.font=[UIFont boldSystemFontOfSize:16];
    iconTextField2.placeholder=@"短信随机码";
    iconTextField2.delegate=self;
    iconTextField2.tag=2;
    [myView addSubview:iconTextField2];
    
    iconTextField3=[[UITextField alloc]initWithFrame:CGRectMake(30, 217, 200, 40)];
    iconTextField3.backgroundColor=[UIColor clearColor];
    iconTextField3.keyboardType=UIKeyboardTypeDefault;
    iconTextField3.font=[UIFont boldSystemFontOfSize:16];
    iconTextField3.placeholder=@"请输入您的密码";
    iconTextField3.secureTextEntry=YES;
    iconTextField3.delegate=self;
    iconTextField3.tag=3;
    [myView addSubview:iconTextField3];
    
    iconTextField4=[[UITextField alloc]initWithFrame:CGRectMake(30, 307, 200, 40)];
    iconTextField4.backgroundColor=[UIColor clearColor];
    iconTextField4.keyboardType=UIKeyboardTypeDefault;
    iconTextField4.font=[UIFont boldSystemFontOfSize:16];
    iconTextField4.placeholder=@"请再输入您的密码";
    iconTextField4.secureTextEntry=YES;
    iconTextField4.delegate=self;
    iconTextField4.tag=4;
    [myView addSubview:iconTextField4];
    
    cancelButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton1.frame=CGRectMake(260, 105, 21, 21);
    [cancelButton1 setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
    [cancelButton1 addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    cancelButton1.tag=1;
    [myView addSubview:cancelButton1];
    //
    //    cancelButton2=[UIButton buttonWithType:UIButtonTypeCustom];
    //    cancelButton2.frame=CGRectMake(260, 165, 21, 21);
    //    [cancelButton2 setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
    //    [cancelButton2 addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    //    cancelButton2.tag=2;
    //    [myView addSubview:cancelButton2];
    
    cancelButton3=[UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton3.frame=CGRectMake(260, 225, 21, 21);
    [cancelButton3 setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
    [cancelButton3 addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    cancelButton3.tag=3;
    [myView addSubview:cancelButton3];
    
    cancelButton4=[UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton4.frame=CGRectMake(260, 315, 21, 21);
    [cancelButton4 setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
    [cancelButton4 addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    cancelButton4.tag=4;
    [myView addSubview:cancelButton4];
    
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
    
    UIToolbar * topView = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
    [topView setBarStyle:UIBarStyleBlack];
    UIBarButtonItem * btnSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc]initWithTitle:@"确定" style:UIBarButtonItemStyleDone target:self action:@selector(textFieldShouldReturn:)];
    NSArray * buttonsArray = [NSArray arrayWithObjects:btnSpace,doneButton,nil];
    [topView setItems:buttonsArray];
    [iconTextField1 setInputAccessoryView:topView];
    [iconTextField2 setInputAccessoryView:topView];
    
    cancelButton1.hidden=YES;
    cancelButton2.hidden=YES;
    cancelButton3.hidden=YES;
    cancelButton4.hidden=YES;
}

- (void)backButtonTapped{
    [self.navigationController popViewControllerAnimated:YES];
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
        iconTextField3.text=@"";
        cancelButton3.hidden=YES;
    }else if (button.tag==4){
        iconTextField4.text=@"";
        cancelButton4.hidden=YES;
    }else if (button.tag==5){
        idTimer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(shengchengTimer) userInfo:nil repeats:YES];
        getTimer=60;
    }
}

- (void)shengchengTimer{
    getTimer--;
    if (getTimer>0) {
        iconLabel1_1.text=[NSString stringWithFormat:@"%d秒重新获取",getTimer];
        getIdButton.enabled=NO;
    }else{
        getTimer=60;
        [idTimer invalidate];
        getIdButton.enabled=YES;
        iconLabel1_1.text=@"重新获取验证码";
    }
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
    if (iconTextField3.text.length==0) {
        cancelButton3.hidden=YES;
    }else{
        cancelButton3.hidden=NO;
    }
    if (iconTextField4.text.length==0) {
        cancelButton4.hidden=YES;
    }else{
        cancelButton4.hidden=NO;
    }
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
    if (iconTextField3.text.length==0) {
        cancelButton3.hidden=YES;
    }else{
        cancelButton3.hidden=NO;
    }
    if (iconTextField4.text.length==0) {
        cancelButton4.hidden=YES;
    }else{
        cancelButton4.hidden=NO;
    }
}

- (void)keyboardWillBeHidden:(NSNotification *)notification{
    cancelButton1.hidden=YES;
    cancelButton2.hidden=YES;
    cancelButton3.hidden=YES;
    cancelButton4.hidden=YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [iconTextField1 resignFirstResponder];
    [iconTextField2 resignFirstResponder];
    [iconTextField3 resignFirstResponder];
    [iconTextField4 resignFirstResponder];
    
    [UIView animateWithDuration:0.5f animations:^{
        myView.frame=CGRectMake(0, 0, 320, self.view.bounds.size.height);
    } completion:^(BOOL finished) {
        
    }];
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag==1) {
        [UIView animateWithDuration:0.5f animations:^{
            myView.frame=CGRectMake(0, 0, 320, self.view.bounds.size.height);
        } completion:^(BOOL finished) {
            
        }];
    }else if (textField.tag==2){
        [UIView animateWithDuration:0.5f animations:^{
            myView.frame=CGRectMake(0, -50, 320, self.view.bounds.size.height);
        } completion:^(BOOL finished) {
            
        }];
    }else if (textField.tag==3){
        [UIView animateWithDuration:0.5f animations:^{
            myView.frame=CGRectMake(0, -100, 320, self.view.bounds.size.height);
        } completion:^(BOOL finished) {
            
        }];
    }else if (textField.tag==4){
        [UIView animateWithDuration:0.5f animations:^{
            myView.frame=CGRectMake(0, -150, 320, self.view.bounds.size.height);
        } completion:^(BOOL finished) {
            
        }];
    }
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [idTimer invalidate];
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
