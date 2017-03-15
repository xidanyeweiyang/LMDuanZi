//
//  LMMainTabbarViewController.m
//  LMDuanZi
//
//  Created by 刘明 on 17/3/8.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "LMMainTabbarViewController.h"

@interface LMMainTabbarViewController ()

@end

@implementation LMMainTabbarViewController

+ (void)initialize{
    
    [[UITabBar appearance] setTranslucent:NO];
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
