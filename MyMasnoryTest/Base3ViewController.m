//
//  Base3ViewController.m
//  MyMasnoryTest
//
//  Created by MikeZhangpy on 16/3/25.
//  Copyright © 2016年 MikeZhangpy. All rights reserved.
//

#import "Base3ViewController.h"

@interface Base3ViewController ()
@property (nonatomic, strong) UIView *animationView;
@end

@implementation Base3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animationView = [[UIView alloc] init];
    [self.view addSubview:self.animationView];
    self.animationView.backgroundColor = [UIColor redColor];
    
    [self.animationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view).centerOffset(CGPointMake(0, -300));
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    self.animationView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.3, 0.3);
    self.animationView.layer.cornerRadius = 100;

    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
        [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:1.5 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
    
            [self.animationView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.center.equalTo(self.view);
            }];
    
            [self.view layoutIfNeeded];
    
            self.animationView.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            
        }];
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
