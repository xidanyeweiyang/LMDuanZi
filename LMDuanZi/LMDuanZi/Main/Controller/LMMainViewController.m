//
//  LMMainViewController.m
//  LMDuanZi
//
//  Created by 刘明 on 17/3/9.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "LMMainViewController.h"
#import "UIButton+LMButton.h"
#import "UIBarButtonItem+LMBarButtonItem.h"
#import "LMMainTableViewController.h"
@interface LMMainViewController ()

@end

@implementation LMMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LMWeakSelf(self)
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    label.textColor = [UIColor blackColor];
    label.text = @"LMNavgationBar";
    self.navigationItem.titleView = label;
        
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem lm_barButtonWithTitle:@"改变背景色" touchBlock:^{
       
        [weakself.navigationController.navigationBar lm_setNavgationBarBackgroundColor:[UIColor orangeColor]];
    }];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem lm_barButtonWithTitle:@"改变透明度" touchBlock:^{
        
        [weakself.navigationController.navigationBar lm_setNavgationBarBackgroundAlpha:0.2];
    }];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    
    [btn setTitle:@"reset" forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(didClickLeftNavItem) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}



- (void)didClickLeftNavItem{
    
    [self.navigationController.navigationBar lm_resetNavgation];

    NSLog(@"123");
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
