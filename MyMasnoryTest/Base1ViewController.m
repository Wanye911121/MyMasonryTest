//
//  Base1ViewController.m
//  MyMasnoryTest
//
//  Created by MikeZhangpy on 16/3/25.
//  Copyright © 2016年 MikeZhangpy. All rights reserved.
//

#import "Base1ViewController.h"

@interface Base1ViewController ()

@end

@implementation Base1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] init];
    [self.view addSubview:label];
    
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
//      make.center.mas_equalTo(self.view);
        make.width.equalTo(@100);
    }];
    
    label.text = @"多行内容显示的时候，不需要指定高度，Mansory自动通过intrinsicContentSize帮我们计算";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor darkGrayColor];
    

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
