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

@interface ViewController ()

@end

UINavigationController *nav1;
UINavigationController *nav2;
UINavigationController *nav3;
UINavigationController *nav4;
UITabBarController *tabBarController;

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    
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
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"WWAN5.png"] tag:1];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"查询" image:[UIImage imageNamed:@"WWAN5.png"] tag:2];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"充值" image:[UIImage imageNamed:@"WWAN5.png"] tag:3];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"更多" image:[UIImage imageNamed:@"WWAN5.png"] tag:4];
//    [item1 setFinishedSelectedImage:[UIImage imageNamed:@"itme1.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"itme1.png"]];
    
    nav1.tabBarItem=item1;
    nav2.tabBarItem=item2;
    nav3.tabBarItem=item3;
    nav4.tabBarItem=item4;
    
    tabBarController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:tabBarController.view];
    
    UITabBar *tabbar=[[UITabBar alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-50, 320, 50)];
    [self.view addSubview:tabbar];
    tabbar.delegate=self;
    [tabbar setItems:[NSArray arrayWithObjects:item1,item2,item3,item4, nil]];
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
