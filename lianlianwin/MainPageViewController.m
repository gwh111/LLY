//
//  MainPageViewController.m
//  lianlianwin
//
//  Created by apple on 5/9/14.
//  Copyright (c) 2014 ___GWH___. All rights reserved.
//

#import "MainPageViewController.h"
#import "DDMenuController.h"
#import "MyCell.h"

@interface MainPageViewController ()

@end

UICollectionView *collectionView;

@implementation MainPageViewController

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
    
    //navigation
    UIButton *topLeftButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [topLeftButton setBackgroundImage:[UIImage imageNamed:@"tb_zb.png"] forState:UIControlStateNormal];
    topLeftButton.frame=CGRectMake(20, 25, 30, 30);
    [self.view addSubview:topLeftButton];
    
    UITextField *topTextField=[[UITextField alloc]initWithFrame:CGRectMake(80, 25, 160, 35)];
    topTextField.borderStyle=UITextBorderStyleRoundedRect;
    topTextField.backgroundColor=[UIColor clearColor];
    topTextField.placeholder=@"搜索产品";
    topTextField.font=[UIFont systemFontOfSize:14];
    topTextField.delegate=self;
    [self.view addSubview:topTextField];
    
    UIButton *topRightButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [topRightButton setBackgroundImage:[UIImage imageNamed:@"tb_yb.png"] forState:UIControlStateNormal];
    topRightButton.frame=CGRectMake(270, 25, 30, 30);
    [self.view addSubview:topRightButton];
    
    //content
    UIScrollView *myScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 70, 320, self.view.bounds.size.height-70)];
    myScrollView.contentSize=CGSizeMake(320, 1000);
    [self.view addSubview:myScrollView];
    
    UIImageView *adImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"banner.png"]];
    adImageView.frame=CGRectMake(0, 0, 320, 101);
    [myScrollView addSubview:adImageView];
    
    UIImageView *lineImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 101, 320, 1)];
    lineImageView1.image=[UIImage imageNamed:@"xk.png"];
    [myScrollView addSubview:lineImageView1];
    
    NSArray *iconTextLabelArray=[[NSArray alloc]initWithObjects:@"充值缴费",@"流量电话",@"娱乐",@"彩票",@"理财宝",@"购物",@"分享计划",@"更多分类", nil];
    
    //content//line1
    UIButton *iconButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton1 setBackgroundImage:[UIImage imageNamed:@"ICO_09.png"] forState:UIControlStateNormal];
    iconButton1.frame=CGRectMake(18, 110, 44, 44);
    [myScrollView addSubview:iconButton1];
    
    UIButton *iconButton2=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton2 setBackgroundImage:[UIImage imageNamed:@"ICO_11.png"] forState:UIControlStateNormal];
    iconButton2.frame=CGRectMake(98, 110, 44, 44);
    [myScrollView addSubview:iconButton2];
    
    UIButton *iconButton3=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton3 setBackgroundImage:[UIImage imageNamed:@"ICO_13.png"] forState:UIControlStateNormal];
    iconButton3.frame=CGRectMake(178, 110, 44, 44);
    [myScrollView addSubview:iconButton3];
    
    UIButton *iconButton4=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton4 setBackgroundImage:[UIImage imageNamed:@"ICO_15.png"] forState:UIControlStateNormal];
    iconButton4.frame=CGRectMake(258, 110, 44, 44);
    [myScrollView addSubview:iconButton4];
    
    //content//line1//text
    UILabel *iconLabel1=[[UILabel alloc]initWithFrame:CGRectMake(0, 145, 80, 40)];
    iconLabel1.backgroundColor=[UIColor clearColor];
    iconLabel1.textAlignment=NSTextAlignmentCenter;
    iconLabel1.text=[iconTextLabelArray objectAtIndex:0];
    iconLabel1.textColor=[UIColor grayColor];
    iconLabel1.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel1];
    
    UILabel *iconLabel2=[[UILabel alloc]initWithFrame:CGRectMake(80, 145, 80, 40)];
    iconLabel2.backgroundColor=[UIColor clearColor];
    iconLabel2.textAlignment=NSTextAlignmentCenter;
    iconLabel2.text=[iconTextLabelArray objectAtIndex:1];
    iconLabel2.textColor=[UIColor grayColor];
    iconLabel2.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel2];
    
    UILabel *iconLabel3=[[UILabel alloc]initWithFrame:CGRectMake(160, 145, 80, 40)];
    iconLabel3.backgroundColor=[UIColor clearColor];
    iconLabel3.textAlignment=NSTextAlignmentCenter;
    iconLabel3.text=[iconTextLabelArray objectAtIndex:2];
    iconLabel3.textColor=[UIColor grayColor];
    iconLabel3.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel3];
    
    UILabel *iconLabel4=[[UILabel alloc]initWithFrame:CGRectMake(240, 145, 80, 40)];
    iconLabel4.backgroundColor=[UIColor clearColor];
    iconLabel4.textAlignment=NSTextAlignmentCenter;
    iconLabel4.text=[iconTextLabelArray objectAtIndex:3];
    iconLabel4.textColor=[UIColor grayColor];
    iconLabel4.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel4];
    
    //content//line2
    UIButton *iconButton5=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton5 setBackgroundImage:[UIImage imageNamed:@"ICO_21.png"] forState:UIControlStateNormal];
    iconButton5.frame=CGRectMake(18, 180, 44, 44);
    [myScrollView addSubview:iconButton5];
    
    UIButton *iconButton6=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton6 setBackgroundImage:[UIImage imageNamed:@"ICO_22.png"] forState:UIControlStateNormal];
    iconButton6.frame=CGRectMake(98, 180, 44, 44);
    [myScrollView addSubview:iconButton6];
    
    UIButton *iconButton7=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton7 setBackgroundImage:[UIImage imageNamed:@"ICO_23.png"] forState:UIControlStateNormal];
    iconButton7.frame=CGRectMake(178, 180, 44, 44);
    [myScrollView addSubview:iconButton7];
    
    UIButton *iconButton8=[UIButton buttonWithType:UIButtonTypeCustom];
    [iconButton8 setBackgroundImage:[UIImage imageNamed:@"ICO_24.png"] forState:UIControlStateNormal];
    iconButton8.frame=CGRectMake(258, 180, 44, 44);
    [myScrollView addSubview:iconButton8];
    
    //content//line2//text
    UILabel *iconLabel5=[[UILabel alloc]initWithFrame:CGRectMake(0, 215, 80, 40)];
    iconLabel5.backgroundColor=[UIColor clearColor];
    iconLabel5.textAlignment=NSTextAlignmentCenter;
    iconLabel5.text=[iconTextLabelArray objectAtIndex:4];
    iconLabel5.textColor=[UIColor grayColor];
    iconLabel5.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel5];
    
    UILabel *iconLabel6=[[UILabel alloc]initWithFrame:CGRectMake(80, 215, 80, 40)];
    iconLabel6.backgroundColor=[UIColor clearColor];
    iconLabel6.textAlignment=NSTextAlignmentCenter;
    iconLabel6.text=[iconTextLabelArray objectAtIndex:5];
    iconLabel6.textColor=[UIColor grayColor];
    iconLabel6.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel6];
    
    UILabel *iconLabel7=[[UILabel alloc]initWithFrame:CGRectMake(160, 215, 80, 40)];
    iconLabel7.backgroundColor=[UIColor clearColor];
    iconLabel7.textAlignment=NSTextAlignmentCenter;
    iconLabel7.text=[iconTextLabelArray objectAtIndex:6];
    iconLabel7.textColor=[UIColor grayColor];
    iconLabel7.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel7];
    
    UILabel *iconLabel8=[[UILabel alloc]initWithFrame:CGRectMake(240, 215, 80, 40)];
    iconLabel8.backgroundColor=[UIColor clearColor];
    iconLabel8.textAlignment=NSTextAlignmentCenter;
    iconLabel8.text=[iconTextLabelArray objectAtIndex:7];
    iconLabel8.textColor=[UIColor grayColor];
    iconLabel8.font=[UIFont boldSystemFontOfSize:12];
    [myScrollView addSubview:iconLabel8];
    
    UIImageView *lineImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 250, 320, 1)];
    lineImageView.image=[UIImage imageNamed:@"xk.png"];
    [myScrollView addSubview:lineImageView];
    UIImageView *lineBackImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 251, 320, 9)];
    lineBackImageView.backgroundColor=[UIColor colorWithRed:245/255.f green:245/255.f blue:245/255.f alpha:1];
    [myScrollView addSubview:lineBackImageView];
    
    UITableView *mainTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 260, 320, 500)];
    mainTableView.delegate=self;
    mainTableView.dataSource=self;
    [myScrollView addSubview:mainTableView];

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

//keyBoard
- (void)keyboardWillShow:(NSNotification *)notification{
    
}

- (void)keyboardWillBeHidden:(NSNotification *)notification{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


//tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    MyCell *cell = (MyCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 44;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 44)];
    UIImageView *lineImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 1)];
    lineImageView1.image=[UIImage imageNamed:@"xk.png"];
    [view addSubview:lineImageView1];
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 1, 100, 44)];
    titleLabel.text=@"近期团购";
    [view addSubview:titleLabel];
    UIImageView *lineImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 44, 320, 1)];
    lineImageView.image=[UIImage imageNamed:@"xk.png"];
    [view addSubview:lineImageView];
    return view;
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
