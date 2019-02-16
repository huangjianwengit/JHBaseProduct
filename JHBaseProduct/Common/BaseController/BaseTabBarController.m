//
//  BaseTabBarController.m
//  JHBaseProduct
//
//  Created by Jivan on 2019/2/16.
//  Copyright © 2019 Jivan. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseTabBarController.h"
#import "BaseNavigationController.h"
@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [self setupAllViewController];
}
#pragma mark - 添加所有的子视图控制器
- (void)setupAllViewController
{
    //首页页面
    BaseViewController * mainVC = [[BaseViewController alloc]init];
    [self setUpOneChildViewController:mainVC Image:@"main" SelectedImage:@"main_Sel" Title:@"首页"];
    //好店页面
    BaseViewController *shopVC = [[BaseViewController alloc]init];
    [self setUpOneChildViewController:shopVC Image:@"shop" SelectedImage:@"shop_Sel" Title:@"好店"];
    
    // 个人
    BaseViewController * personVC = [[BaseViewController alloc]init];
    [self setUpOneChildViewController:personVC Image:@"person" SelectedImage:@"person_Sel" Title:@"个人"];
    
    
}

-(void)setUpOneChildViewController:(UIViewController *)viewController Image:(NSString *)image SelectedImage:(NSString *)selectedImage Title:(NSString *)title {
    
    BaseNavigationController *navVC = [[BaseNavigationController alloc]initWithRootViewController:viewController];
    viewController.title = title ;
    viewController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor],NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor],NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateSelected];
    [self addChildViewController:navVC];
    
}

@end
