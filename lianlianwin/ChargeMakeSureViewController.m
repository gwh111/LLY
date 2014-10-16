//
//  ChargeMakeSureViewController.m
//  LLY
//
//  Created by apple on 16/10/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "ChargeMakeSureViewController.h"

@interface ChargeMakeSureViewController ()

@end

@implementation ChargeMakeSureViewController

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
    titleLabel.text=@"话费账单确认";
    titleLabel.font=[UIFont boldSystemFontOfSize:18];
    titleLabel.textColor=[UIColor colorWithRed:89/255.f green:89/255.f blue:89/255.f alpha:1];
    [self.view addSubview:titleLabel];
    
    //content
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(15, 80, 100, 40)];
    label1.textColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    label1.text=@"话费账单";
    [self.view addSubview:label1];
    
    UIImageView *imageView1=[[UIImageView alloc]initWithFrame:CGRectMake(10, 110, 300, 180)];
    imageView1.image=[UIImage imageNamed:@"czjf1.png"];
    [self.view addSubview:imageView1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(15, 280, 300, 40)];
    label2.textColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    label2.text=@"本次可得到红包：      充值后即将打入您的手机钱包";
    label2.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:label2];
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(15, 320, 100, 40)];
    label3.textColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    label3.text=@"付款方式";
    [self.view addSubview:label3];
    
    UIImageView *imageView2=[[UIImageView alloc]initWithFrame:CGRectMake(10, 350, 300, 120)];
    imageView2.image=[UIImage imageNamed:@"czjf2.png"];
    [self.view addSubview:imageView2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backButtonTapped{
    [self.navigationController popViewControllerAnimated:YES];
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
