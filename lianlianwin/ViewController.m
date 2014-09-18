//
//  ViewController.m
//  lianlianwin
//
//  Created by apple on 5/9/14.
//  Copyright (c) 2014 ___GWH___. All rights reserved.
//

#import "ViewController.h"
#import "MainPageViewController.h"
#import "CheckViewController.h"
#import "PayViewController.h"
#import "MoreViewController.h"
#import "DDMenuController.h"

@interface ViewController ()

@end

UINavigationController *nav1;
UINavigationController *nav2;
UINavigationController *nav3;
UINavigationController *nav4;
UITabBarController *tabBarController;

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"首页view");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationController.navigationBarHidden=YES;
    
    MainPageViewController *main=[[MainPageViewController alloc]init];
    CheckViewController *check=[[CheckViewController alloc]init];
    PayViewController *pay=[[PayViewController alloc]init];
    MoreViewController *more=[[MoreViewController alloc]init];

    nav1 = [[UINavigationController alloc] initWithRootViewController:main];
    nav2 = [[UINavigationController alloc] initWithRootViewController:check];
    nav3 = [[UINavigationController alloc] initWithRootViewController:pay];
    nav4 = [[UINavigationController alloc] initWithRootViewController:more];
    
    tabBarController=[[UITabBarController alloc]init];
    tabBarController.delegate=self;
    tabBarController.viewControllers=[NSArray arrayWithObjects:nav1,nav2,nav3,nav4, nil];
    
    tabBarController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:tabBarController.view];
    
    //tabBar
    UIImageView *backBarImageView=[[UIImageView alloc]init];
    backBarImageView.frame=CGRectMake(0, self.view.bounds.size.height-50, 320, 50);
    backBarImageView.backgroundColor=[UIColor colorWithRed:248/255.f green:248/255.f blue:248/255.f alpha:1];
    [self.view addSubview:backBarImageView];
    
    UIImageView *tabBarItem1=[[UIImageView alloc]initWithFrame:CGRectMake(29.25, 10, 21.5, 21.5)];
    tabBarItem1.image=[UIImage imageNamed:@"dbtb_40.png"];
    [backBarImageView addSubview:tabBarItem1];
    
    UIImageView *tabBarItem2=[[UIImageView alloc]initWithFrame:CGRectMake(109.25, 10, 21.5, 21.5)];
    tabBarItem2.image=[UIImage imageNamed:@"dbtb_42.png"];
    [backBarImageView addSubview:tabBarItem2];
    
    UIImageView *tabBarItem3=[[UIImageView alloc]initWithFrame:CGRectMake(189.25, 10, 21.5, 21.5)];
    tabBarItem3.image=[UIImage imageNamed:@"dbtb_45.png"];
    [backBarImageView addSubview:tabBarItem3];
    
    UIImageView *tabBarItem4=[[UIImageView alloc]initWithFrame:CGRectMake(269.25, 10, 21.5, 21.5)];
    tabBarItem4.image=[UIImage imageNamed:@"dbtb_48.png"];
    [backBarImageView addSubview:tabBarItem4];

    UIButton *tabBarButton1=[UIButton buttonWithType:UIButtonTypeCustom];
    tabBarButton1.frame=CGRectMake(0, self.view.bounds.size.height-50, 80, 50);
    tabBarButton1.backgroundColor=[UIColor clearColor];
    tabBarButton1.highlighted=NO;
    [self.view addSubview:tabBarButton1];
    [tabBarButton1 addTarget:self action:@selector(tabBarButton:) forControlEvents:UIControlEventTouchUpInside];
    tabBarButton1.tag=1;
    
    UIButton *tabBarButton2=[UIButton buttonWithType:UIButtonTypeCustom];
    tabBarButton2.frame=CGRectMake(80, self.view.bounds.size.height-50, 80, 50);
    tabBarButton2.backgroundColor=[UIColor clearColor];
    tabBarButton2.highlighted=NO;
    [self.view addSubview:tabBarButton2];
    [tabBarButton2 addTarget:self action:@selector(tabBarButton:) forControlEvents:UIControlEventTouchUpInside];
    tabBarButton2.tag=2;
    
    UIButton *tabBarButton3=[UIButton buttonWithType:UIButtonTypeCustom];
    tabBarButton3.frame=CGRectMake(160, self.view.bounds.size.height-50, 80, 50);
    tabBarButton3.backgroundColor=[UIColor clearColor];
    tabBarButton3.highlighted=NO;
    [self.view addSubview:tabBarButton3];
    [tabBarButton3 addTarget:self action:@selector(tabBarButton:) forControlEvents:UIControlEventTouchUpInside];
    tabBarButton3.tag=3;
    
    UIButton *tabBarButton4=[UIButton buttonWithType:UIButtonTypeCustom];
    tabBarButton4.frame=CGRectMake(240, self.view.bounds.size.height-50, 80, 50);
    tabBarButton4.backgroundColor=[UIColor clearColor];
    tabBarButton4.highlighted=NO;
    [self.view addSubview:tabBarButton4];
    [tabBarButton4 addTarget:self action:@selector(tabBarButton:) forControlEvents:UIControlEventTouchUpInside];
    tabBarButton4.tag=4;
    
    UILabel *iconLabel1=[[UILabel alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-30, 80, 40)];
    iconLabel1.backgroundColor=[UIColor clearColor];
    iconLabel1.textAlignment=NSTextAlignmentCenter;
    iconLabel1.text=@"首页";
    iconLabel1.textColor=[UIColor grayColor];
    iconLabel1.font=[UIFont boldSystemFontOfSize:10];
    [self.view addSubview:iconLabel1];
    
    UILabel *iconLabel2=[[UILabel alloc]initWithFrame:CGRectMake(80, self.view.bounds.size.height-30, 80, 40)];
    iconLabel2.backgroundColor=[UIColor clearColor];
    iconLabel2.textAlignment=NSTextAlignmentCenter;
    iconLabel2.text=@"查询";
    iconLabel2.textColor=[UIColor grayColor];
    iconLabel2.font=[UIFont boldSystemFontOfSize:10];
    [self.view addSubview:iconLabel2];
    
    UILabel *iconLabel3=[[UILabel alloc]initWithFrame:CGRectMake(160, self.view.bounds.size.height-30, 80, 40)];
    iconLabel3.backgroundColor=[UIColor clearColor];
    iconLabel3.textAlignment=NSTextAlignmentCenter;
    iconLabel3.text=@"充值";
    iconLabel3.textColor=[UIColor grayColor];
    iconLabel3.font=[UIFont boldSystemFontOfSize:10];
    [self.view addSubview:iconLabel3];
    
    UILabel *iconLabel4=[[UILabel alloc]initWithFrame:CGRectMake(240, self.view.bounds.size.height-30, 80, 40)];
    iconLabel4.backgroundColor=[UIColor clearColor];
    iconLabel4.textAlignment=NSTextAlignmentCenter;
    iconLabel4.text=@"更多";
    iconLabel4.textColor=[UIColor grayColor];
    iconLabel4.font=[UIFont boldSystemFontOfSize:10];
    [self.view addSubview:iconLabel4];
}

- (void)tabBarButton:(id)sender{
    UIButton *button=(UIButton *)sender;
    if (button.tag==1) {
        tabBarController.selectedViewController=nav1;
    }else if (button.tag==2){
        tabBarController.selectedViewController=nav2;
    }else if (button.tag==3){
        tabBarController.selectedViewController=nav3;
    }else if (button.tag==4){
        tabBarController.selectedViewController=nav4;
    }else{
        
    }
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{

    NSLog(@"%d",item.tag);
    if (item.tag==1) {
        tabBarController.selectedViewController=nav1;
    }else if (item.tag==2){
        tabBarController.selectedViewController=nav2;
    }else if (item.tag==3){
        tabBarController.selectedViewController=nav3;
    }else if (item.tag==4){
        tabBarController.selectedViewController=nav4;
    }else{
        
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
