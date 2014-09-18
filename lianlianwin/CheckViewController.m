//
//  CheckViewController.m
//  lianlianwin
//
//  Created by apple on 5/9/14.
//  Copyright (c) 2014 ___GWH___. All rights reserved.
//

#import "CheckViewController.h"
#import "PayViewController.h"
#import "MoreViewController.h"

@interface CheckViewController ()

@end

@implementation CheckViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"查询view");
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
    
    UIButton *tabBarButton3=[UIButton buttonWithType:UIButtonTypeCustom];
    tabBarButton3.frame=CGRectMake(160, self.view.bounds.size.height-50, 80, 50);
    tabBarButton3.backgroundColor=[UIColor clearColor];
    tabBarButton3.highlighted=NO;
    [self.view addSubview:tabBarButton3];
    [tabBarButton3 addTarget:self action:@selector(tabBarButton:) forControlEvents:UIControlEventTouchUpInside];
    tabBarButton3.tag=3;
    
}

- (void)tabBarButton:(id)sender{
    UIButton *button=(UIButton *)sender;
    if (button.tag==1) {
        [self.navigationController popViewControllerAnimated:NO];
    }else if (button.tag==3){
        [self.navigationController popViewControllerAnimated:NO];
        PayViewController *item3=[[PayViewController alloc]init];
        [self.navigationController pushViewController:item3 animated:NO];
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
