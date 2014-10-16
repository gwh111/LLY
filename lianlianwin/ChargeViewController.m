//
//  ChargeViewController.m
//  LLY
//
//  Created by apple on 7/10/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "ChargeViewController.h"

@interface ChargeViewController ()

@end

@implementation ChargeViewController

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
    self.view.backgroundColor=[UIColor colorWithRed:245/255.f green:245/255.f blue:245/255.f alpha:1];
    //NavigationBar
    UIImageView *topImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 64)];
    topImageView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:topImageView];
    
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    backButton.backgroundColor=[UIColor clearColor];
    backButton.frame=CGRectMake(0, 20, 80, 50);
    [backButton addTarget:self action:@selector(backButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    UIImageView *backImageView=[[UIImageView alloc]initWithFrame:CGRectMake(10, 30, 27, 27)];
    backImageView.image=[UIImage imageNamed:@"xq.png"];
    [self.view addSubview:backImageView];
    
    UIImageView *lineImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 63, 320, 1)];
    lineImageView1.image=[UIImage imageNamed:@"xk.png"];
    [self.view addSubview:lineImageView1];
    
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, 320, 50)];
    titleLabel.backgroundColor=[UIColor clearColor];
    titleLabel.textAlignment=NSTextAlignmentCenter;
    titleLabel.text=@"充值缴费";
    titleLabel.font=[UIFont boldSystemFontOfSize:18];
    titleLabel.textColor=[UIColor colorWithRed:89/255.f green:89/255.f blue:89/255.f alpha:1];
    [self.view addSubview:titleLabel];

    //
    UIImageView *blankImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 64, 320, 156)];
    blankImage.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:blankImage];
    
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 220, 320, 10)];
    imageView.image=[UIImage imageNamed:@"zxdt.png"];
    [self.view addSubview:imageView];
    
    UIImageView *icon1ImageView=[[UIImageView alloc]initWithFrame:CGRectMake(30, 85, 40, 40)];
    icon1ImageView.image=[UIImage imageNamed:@"jf.png"];
    [self.view addSubview:icon1ImageView];
    
    UIImageView *icon2ImageView=[[UIImageView alloc]initWithFrame:CGRectMake(30, 165, 40, 40)];
    icon2ImageView.image=[UIImage imageNamed:@"qbbb.png"];
    [self.view addSubview:icon2ImageView];
    
    UIImageView *lineImageView2=[[UIImageView alloc]initWithFrame:CGRectMake(0, 140, 320, 1)];
    lineImageView2.image=[UIImage imageNamed:@"zxx.png"];
    [self.view addSubview:lineImageView2];
    
    UIImageView *lineImageView3=[[UIImageView alloc]initWithFrame:CGRectMake(0, 220, 320, 1)];
    lineImageView3.image=[UIImage imageNamed:@"zxx.png"];
    [self.view addSubview:lineImageView3];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(100, 80, 150, 50)];
    label1.text=@"话费充值";
    label1.textColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    [self.view addSubview:label1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(100, 160, 150, 50)];
    label2.text=@"手机钱包充值";
    label2.textColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    [self.view addSubview:label2];
    
    UIButton *iconButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton1 setTitle:@"我要充值" forState:UIControlStateNormal];
    iconButton1.titleLabel.font=[UIFont boldSystemFontOfSize:14];
    [iconButton1 setTitleColor:[UIColor colorWithRed:40/255.f green:146/255.f blue:1 alpha:0.8] forState:UIControlStateNormal];
    iconButton1.frame=CGRectMake(230, 80, 80, 50);
    [self.view addSubview:iconButton1];
    
    UIButton *iconButton2=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton2 setTitle:@"我要充值" forState:UIControlStateNormal];
    iconButton2.titleLabel.font=[UIFont boldSystemFontOfSize:14];
    [iconButton2 setTitleColor:[UIColor colorWithRed:40/255.f green:146/255.f blue:1 alpha:0.8] forState:UIControlStateNormal];
    iconButton2.frame=CGRectMake(230, 160, 80, 50);
    [self.view addSubview:iconButton2];
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

- (void)backButtonTapped{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
