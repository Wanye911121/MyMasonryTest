//
//  Base2ViewController.m
//  MyMasnoryTest
//
//  Created by MikeZhangpy on 16/3/25.
//  Copyright © 2016年 MikeZhangpy. All rights reserved.
//

#import "Base2ViewController.h"

@interface Base2ViewController ()
@property (nonatomic, strong) UILabel *labelCenter;
@end

@implementation Base2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *label = [UILabel new];
    [self.view addSubview:label];

    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);

        make.left.equalTo(self.view);
    }];

    label.text  = @"左边的文字";
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor grayColor];

    [label setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [label setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];

    
    
    
    UILabel *label1 = [UILabel new];
    [self.view addSubview:label1];

    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);

        make.left.equalTo(label.mas_right);
    }];

    label1.text  = @"中间的文字";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.textColor = [UIColor blackColor];
    label1.backgroundColor = [UIColor redColor];

    self.labelCenter = label1;
    
    
    UILabel *label2 = [UILabel new];
    [self.view addSubview:label2];

    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);

        make.left.equalTo(label1.mas_right);
        make.right.equalTo(self.view.mas_right);
    }];

    label2.text  = @"右边的文字";
    label2.textColor = [UIColor blackColor];
    label2.backgroundColor = [UIColor grayColor];

    [label2 setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [label2 setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];


    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.labelCenter.text = [self.labelCenter.text stringByAppendingString:@"test"];
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
