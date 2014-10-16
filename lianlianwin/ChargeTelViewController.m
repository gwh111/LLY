//
//  ChargeTelViewController.m
//  LLY
//
//  Created by apple on 16/10/14.
//  Copyright (c) 2014年 ___GWH___. All rights reserved.
//

#import "ChargeTelViewController.h"
#import "ChargeMakeSureViewController.h"

@interface ChargeTelViewController ()

@end

UIPickerView *datePicker;

@implementation ChargeTelViewController

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
    titleLabel.text=@"话费充值";
    titleLabel.font=[UIFont boldSystemFontOfSize:18];
    titleLabel.textColor=[UIColor colorWithRed:89/255.f green:89/255.f blue:89/255.f alpha:1];
    [self.view addSubview:titleLabel];
    
    //
    UIImageView *whiteImageView1=[[UIImageView alloc]initWithFrame:CGRectMake(10, 80, 300, 44)];
    whiteImageView1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:whiteImageView1];
    [whiteImageView1.layer setMasksToBounds:YES];
    [whiteImageView1.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    
    UIImageView *whiteImageView2=[[UIImageView alloc]initWithFrame:CGRectMake(10, 150, 300, 44)];
    whiteImageView2.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:whiteImageView2];
    [whiteImageView2.layer setMasksToBounds:YES];
    [whiteImageView2.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    
    UILabel *teleLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 80, 200, 44)];
    teleLabel.text=@"17001234567";
    teleLabel.backgroundColor=[UIColor clearColor];
    [self.view addSubview:teleLabel];
    
    UILabel *momeyLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 150, 200, 44)];
    momeyLabel.text=@"充话费    100元";
    momeyLabel.backgroundColor=[UIColor clearColor];
    momeyLabel.font=[UIFont systemFontOfSize:14];
    [self.view addSubview:momeyLabel];
    
    UILabel *redBagLabel=[[UILabel alloc]initWithFrame:CGRectMake(220, 150, 100, 44)];
    redBagLabel.text=@"送红包:1元";
    redBagLabel.backgroundColor=[UIColor clearColor];
    redBagLabel.font=[UIFont boldSystemFontOfSize:14];
    redBagLabel.textColor=[UIColor colorWithRed:253/255.f green:73/255.f blue:119/255.f alpha:1];
    [self.view addSubview:redBagLabel];
    
    UIButton *tapButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    tapButton1.frame=CGRectMake(10, 150, 300, 44);
    tapButton1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:tapButton1];
    [tapButton1 addTarget:self action:@selector(tapButton1) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *okButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [okButton setBackgroundColor:[UIColor colorWithRed:253/255.f green:73/255.f blue:119/255.f alpha:1]];
    okButton.frame=CGRectMake(15, 240, 290, 44);
    [okButton setTitle:@"确认" forState:UIControlStateNormal];
    [okButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    okButton.titleLabel.font=[UIFont boldSystemFontOfSize:18];
    [okButton.layer setMasksToBounds:YES];
    [okButton.layer setCornerRadius:5.0];//设置矩形四个圆角半径
    [okButton addTarget:self action:@selector(okButton) forControlEvents:UIControlEventTouchUpInside];
    okButton.tag=4;
    [self.view addSubview:okButton];
    
    datePicker=[[UIPickerView alloc]init];
    datePicker.frame=CGRectMake(0, self.view.bounds.size.height-200, self.view.bounds.size.width, 180);
    [self.view addSubview:datePicker];
    datePicker.hidden=YES;
    datePicker.delegate=self;
    datePicker.dataSource=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backButtonTapped{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)tapButton1{
    NSLog(@"tap1");
    datePicker.hidden=NO;
}
- (void)okButton{
    NSLog(@"okButton");
    ChargeMakeSureViewController *sure=[[ChargeMakeSureViewController alloc]init];
    [self.navigationController pushViewController:sure animated:YES];
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

#pragma mark -

#pragma mark Picker Data Source Methods
//返回有几列
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    
    //返回有几列 ，注意
    return 1;
    
}


//返回指定列的行数
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    return 5;
}



//以下是代理部分，可以自定义视图

//返回指定列，行的高度，就是自定义行的高度
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);

    return  40;
}


//返回指定列的宽度
- (CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    if (component==0) {
        //第0列，宽为180
        return  180;
    } else if(component==1){
        //第1列，宽为80
        return  80;
    }
    else{
        //第三列宽为60
        return 60;
    }
    
}

// 自定义指定列的每行的视图，即指定列的每行的视图行为一致
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    
    
    //思想就是：先创建一个View以指定列的宽度，和所在列行的高度，为尺寸
    //再建立一个label,在这个view上显示字体，字体颜色，字体大小，然后，把这个label添加到view中
    //返回view，作为指定列的每行的视图
    
    
    
    //取得指定列的宽度
    CGFloat width=[self pickerView:pickerView widthForComponent:component];
    
    //取得指定列，行的高度
    CGFloat height=[self pickerView:pickerView rowHeightForComponent:component];
    
    //定义一个视图
    UIView *myView=[[UIView alloc] init];
    
    //指定视图frame
    myView.frame=CGRectMake(0, 0, width, height);
    
    UILabel *labelOnComponent=[[UILabel alloc] init];
    
    labelOnComponent.frame=myView.frame;
    labelOnComponent.tag=200;
    
    
    if (component==0) {
        //如果是第0列
        //在label上显示改字体
        labelOnComponent.text=[NSString stringWithFormat:@"100"];
        
    }
    [myView addSubview:labelOnComponent];
    
    return myView;
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component
{
    //取得选择的是第0列的哪一行
    NSInteger rowOfFontComponent = [pickerView selectedRowInComponent:0];
    
    //取得所选列所选行的视图
    UIView *ViewOfFontComponent = (UILabel *)[pickerView viewForRow:rowOfFontComponent forComponent:0];
  
    //取得取得所选行所选列上的视图的子视图
    UILabel *viewOnViewofFontComponent=(UILabel *)[ViewOfFontComponent viewWithTag:200];
    
    //最后将所选择的结果展现在label上，即字体样式，字体颜色，字体大小
    
    
}

@end
