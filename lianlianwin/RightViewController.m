//
//  RightViewController.m
//  lianlianwin
//
//  Created by apple on 5/9/14.
//  Copyright (c) 2014 ___GWH___. All rights reserved.
//

#import "RightViewController.h"
#import "MyCell.h"
#import "PayViewController.h"
#import "AppDelegate.h"

@interface RightViewController ()

@end

UILabel *leftLabel;
UILabel *middleLabel;
UILabel *rightLabel;
UITableView *tableView;
NSArray *listArray;
NSArray *sectionArray_1,*sectionArray_2,*sectionArray_3;
float value_1_1,value_1_2,value_1_3,value_1_4;
float value_2_1,value_2_2,value_2_3,value_2_4;
float value_3_1;

@implementation RightViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    self.navigationController.title=@"会员";
    
    leftLabel=[[UILabel alloc]initWithFrame:CGRectMake(50, 100, 80, 50)];
    leftLabel.textColor=[UIColor redColor];
    leftLabel.backgroundColor=[UIColor grayColor];
    leftLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:leftLabel];
    
    middleLabel=[[UILabel alloc]initWithFrame:CGRectMake(140, 100, 80, 50)];
    middleLabel.textColor=[UIColor redColor];
    middleLabel.backgroundColor=[UIColor grayColor];
    middleLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:middleLabel];
    
    rightLabel=[[UILabel alloc]initWithFrame:CGRectMake(230, 100, 80, 50)];
    rightLabel.textColor=[UIColor redColor];
    rightLabel.backgroundColor=[UIColor grayColor];
    rightLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:rightLabel];
    
    leftLabel.text=@"150分钟";
    middleLabel.text=@"300M";
    rightLabel.text=@"0.00元";
    
    listArray=[[NSArray alloc]initWithObjects:@"本月话费统计",@"本月流量统计",@"钱包统计",@"", nil];
    sectionArray_1=[[NSArray alloc]initWithObjects:@"还剩余额",@"可用余额",@"当月已消费额",@"欠费金额", nil];
    sectionArray_2=[[NSArray alloc]initWithObjects:@"总流量",@"已用流量",@"剩余流量",@"超出流量", nil];
    sectionArray_3=[[NSArray alloc]initWithObjects:@"钱包余额", nil];
    
    tableView=[[UITableView alloc]initWithFrame:CGRectMake(40, 150, 280, 330) style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.dataSource=self;
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==2) {
        return 80;
    }else if (indexPath.section==3){
        return 50;
    }else{
        return 150;
    }
}

//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//    if (section==2) {
//        return 50;
//    }else{
//        return 0;
//    }
//}
//
//- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
//    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 280, 50)];
//    UIButton *zhuXiaoButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 280, 44)];
//    [zhuXiaoButton setBackgroundColor:[UIColor redColor]];
//    [zhuXiaoButton setTitle:@"注销" forState:UIControlStateNormal];
//    [zhuXiaoButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [view addSubview:zhuXiaoButton];
//    [zhuXiaoButton addTarget:self action:@selector(zhuXiao) forControlEvents:UIControlEventTouchUpInside];
//    return view;
//}
- (void)zhuXiao{
    NSLog(@"zhuXiao");
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    MyCell *cell = (MyCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.titleLabel.text=[listArray objectAtIndex:indexPath.section];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    cell.label1.font=[UIFont systemFontOfSize:12];
    cell.label2.font=[UIFont systemFontOfSize:12];
    cell.label3.font=[UIFont systemFontOfSize:12];
    cell.label4.font=[UIFont systemFontOfSize:12];
    if (indexPath.section==0) {
        cell.label1.text=[sectionArray_1 objectAtIndex:0];
        cell.label2.text=[sectionArray_1 objectAtIndex:1];
        cell.label3.text=[sectionArray_1 objectAtIndex:2];
        cell.label4.text=[sectionArray_1 objectAtIndex:3];
    }else if (indexPath.section==1){
        cell.label1.text=[sectionArray_2 objectAtIndex:0];
        cell.label2.text=[sectionArray_2 objectAtIndex:1];
        cell.label3.text=[sectionArray_2 objectAtIndex:2];
        cell.label4.text=[sectionArray_2 objectAtIndex:3];
    }else if (indexPath.section==2){
        cell.label1.text=[sectionArray_3 objectAtIndex:0];
    }else if (indexPath.section==3){
        cell.accessoryType=UITableViewCellAccessoryNone;
        UIButton *zhuXiaoButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 280, 44)];
        [zhuXiaoButton setBackgroundColor:[UIColor redColor]];
        [zhuXiaoButton setTitle:@"注销" forState:UIControlStateNormal];
        [zhuXiaoButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [cell addSubview:zhuXiaoButton];
        [zhuXiaoButton addTarget:self action:@selector(zhuXiao) forControlEvents:UIControlEventTouchUpInside];
    }
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d",indexPath.section);
    
    AppDelegate *del=[UIApplication sharedApplication].delegate;
    UINavigationController *home=(UINavigationController *)del.window.rootViewController;
    
    PayViewController *pay=[[PayViewController alloc]init];
    [home pushViewController:pay animated:YES];
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
