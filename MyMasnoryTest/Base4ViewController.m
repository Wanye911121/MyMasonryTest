//
//  Base4ViewController.m
//  MyMasnoryTest
//
//  Created by MikeZhangpy on 16/3/25.
//  Copyright © 2016年 MikeZhangpy. All rights reserved.
//

#import "Base4ViewController.h"

@interface Base4ViewController ()

@end

@implementation Base4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [UIScrollView new];
    [self.view addSubview:scrollView];
    
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(100, 50, 50, 50));
    }];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    
    
    
    //中间层，解耦子控件与scrollView的约束
    UIView *container = [UIView new];
    [scrollView addSubview:container];
    
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
    }];

    
    
    CGSize size = CGSizeMake(100, 100);
        UIView *view1 = [UIView new];
        [scrollView addSubview:view1];
        
        [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(size);
        }];
        view1.backgroundColor = [UIColor redColor];

    
        UIView *view2 = [UIView new];
        [scrollView addSubview:view2];
        
        [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(size);
            
            make.left.equalTo(view1.mas_right);
            make.top.equalTo(view1.mas_bottom);
            
        }];
        view2.backgroundColor = [UIColor yellowColor];
    
    
        UIView *view3 = [UIView new];
        [scrollView addSubview:view3];
        
        [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(size);
        
            make.right.equalTo(view2.mas_left);
            make.top.equalTo(view2.mas_bottom);
            
        }];
        view3.backgroundColor = [UIColor greenColor];
    
    
        UIView *view4 = [UIView new];
        [scrollView addSubview:view4];
        
        [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(size);
            
            make.right.equalTo(view3.mas_left);
            make.top.equalTo(view3.mas_bottom);
            
        }];
        view4.backgroundColor = [UIColor blueColor];

    
        UIView *view5 = [UIView new];
        [scrollView addSubview:view5];
        
        [view5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(size);
            
            make.left.equalTo(view4.mas_right);
            make.top.equalTo(view4.mas_bottom);
            
        }];
        view5.backgroundColor = [UIColor orangeColor];

    [container mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view4.mas_left);
        make.top.equalTo(view1.mas_top);
        make.right.equalTo(view2.mas_right);
        make.bottom.equalTo(view5.mas_bottom);
    }];

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
