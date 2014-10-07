//
//  MemberCenterViewController.m
//  LLY
//
//  Created by apple on 7/10/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "MemberCenterViewController.h"
#import "MyCell_MemberCenter.h"

@interface MemberCenterViewController ()

@end

NSArray *titleNameArray;
NSArray *titleImageViewNameArray;
NSArray *buttonArray;

@implementation MemberCenterViewController

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
    
    titleNameArray=[[NSArray alloc]initWithObjects:@"订货",@"活动",@"应用", nil];
    titleImageViewNameArray=[[NSArray alloc]initWithObjects:@"dh.jpg",@"dhl.jpg",@"dhh.jpg", nil];
    buttonArray=[[NSArray alloc]initWithObjects:@"版本更新",@"在线客服",@"170业务",@"手机钱包", nil];
    
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
    
//    UIImageView *lineImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 21, 320, 1)];
//    lineImageView.image=[UIImage imageNamed:@"xk.png"];
//    [self.view addSubview:lineImageView];
    
    //
    UIImageView *backgroundImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 64, 320, 106)];
    backgroundImageView.image=[UIImage imageNamed:@"bj.jpg"];
    [self.view addSubview:backgroundImageView];
    
    UIImageView *figureImageView=[[UIImageView alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-30, 80, 60, 60)];
    figureImageView.image=[UIImage imageNamed:@"tx.png"];
    [self.view addSubview:figureImageView];
    
    UITableView *tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 150, 320, 120)];
    [self.view addSubview:tab];
    tab.delegate=self;
    tab.dataSource=self;
    tab.backgroundColor=[UIColor clearColor];
    tab.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //
    UIImageView *whiteImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 280, 320, 80)];
    whiteImageView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:whiteImageView];
    
    UIButton *iconButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton1 setBackgroundImage:[UIImage imageNamed:@"gx.png"] forState:UIControlStateNormal];
    iconButton1.frame=CGRectMake(18, 290, 44, 44);
    [self.view addSubview:iconButton1];
    
    UIButton *iconButton2=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton2 setBackgroundImage:[UIImage imageNamed:@"kf.png"] forState:UIControlStateNormal];
    iconButton2.frame=CGRectMake(98, 290, 44, 44);
    [self.view addSubview:iconButton2];
    
    UIButton *iconButton3=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton3 setBackgroundImage:[UIImage imageNamed:@"sj.png"] forState:UIControlStateNormal];
    iconButton3.frame=CGRectMake(178, 290, 44, 44);
    [self.view addSubview:iconButton3];
    
    UIButton *iconButton4=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton4 setBackgroundImage:[UIImage imageNamed:@"qb.png"] forState:UIControlStateNormal];
    iconButton4.frame=CGRectMake(258, 290, 44, 44);
    [self.view addSubview:iconButton4];
    
    UILabel *iconLabel1=[[UILabel alloc]initWithFrame:CGRectMake(0, 330, 80, 40)];
    iconLabel1.backgroundColor=[UIColor clearColor];
    iconLabel1.textAlignment=NSTextAlignmentCenter;
    iconLabel1.text=[buttonArray objectAtIndex:0];
    iconLabel1.textColor=[UIColor grayColor];
    iconLabel1.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:iconLabel1];
    
    UILabel *iconLabel2=[[UILabel alloc]initWithFrame:CGRectMake(80, 330, 80, 40)];
    iconLabel2.backgroundColor=[UIColor clearColor];
    iconLabel2.textAlignment=NSTextAlignmentCenter;
    iconLabel2.text=[buttonArray objectAtIndex:1];
    iconLabel2.textColor=[UIColor grayColor];
    iconLabel2.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:iconLabel2];
    
    UILabel *iconLabel3=[[UILabel alloc]initWithFrame:CGRectMake(160, 330, 80, 40)];
    iconLabel3.backgroundColor=[UIColor clearColor];
    iconLabel3.textAlignment=NSTextAlignmentCenter;
    iconLabel3.text=[buttonArray objectAtIndex:2];
    iconLabel3.textColor=[UIColor grayColor];
    iconLabel3.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:iconLabel3];
    
    UILabel *iconLabel4=[[UILabel alloc]initWithFrame:CGRectMake(240, 330, 80, 40)];
    iconLabel4.backgroundColor=[UIColor clearColor];
    iconLabel4.textAlignment=NSTextAlignmentCenter;
    iconLabel4.text=[buttonArray objectAtIndex:3];
    iconLabel4.textColor=[UIColor grayColor];
    iconLabel4.font=[UIFont boldSystemFontOfSize:12];
    [self.view addSubview:iconLabel4];
    
    //button
    UIButton *xiugaiButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [xiugaiButton setBackgroundColor:[UIColor colorWithRed:233/255.f green:233/255.f blue:233/255.f alpha:1]];
    xiugaiButton.frame=CGRectMake(15, 380, 290, 44);
    [xiugaiButton setTitle:@"修改登录密码" forState:UIControlStateNormal];
    [xiugaiButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    xiugaiButton.titleLabel.font=[UIFont boldSystemFontOfSize:18];
    [xiugaiButton.layer setMasksToBounds:YES];
    [xiugaiButton.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    [xiugaiButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    xiugaiButton.tag=5;
    [self.view addSubview:xiugaiButton];
    
    UIButton *signoutButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [signoutButton setBackgroundColor:[UIColor colorWithRed:253/255.f green:73/255.f blue:119/255.f alpha:1]];
    signoutButton.frame=CGRectMake(15, 430, 290, 44);
    [signoutButton setTitle:@"退出登录" forState:UIControlStateNormal];
    [signoutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    signoutButton.titleLabel.font=[UIFont boldSystemFontOfSize:18];
    [signoutButton.layer setMasksToBounds:YES];
    [signoutButton.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    [signoutButton addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    signoutButton.tag=6;
    [self.view addSubview:signoutButton];
}

//tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    MyCell_MemberCenter *cell = (MyCell_MemberCenter*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyCell_MemberCenter" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.backgroundColor=[UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    cell.titleLabel.text=[titleNameArray objectAtIndex:indexPath.row];
    cell.titleImageView.image=[UIImage imageNamed:[titleImageViewNameArray objectAtIndex:indexPath.row]];
    cell.contentLabel.text=[NSString stringWithFormat:@"尊敬的用户，我们的团购功能又更新啦，请查看哦"];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
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

- (void)buttonTaped:(id)sender{
    UIButton *button=(UIButton*)sender;
    if (button.tag==6) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

@end
