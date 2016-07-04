//
//  ViewController.m
//  TWCitySelectView
//
//  Created by TreeWriteMac on 16/6/30.
//  Copyright © 2016年 Raykin. All rights reserved.
//

#import "ViewController.h"
#import "TWSelectCityView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *strLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  在此进入
 *
 */

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [@"df" isEqualToString:@""];
    
    TWSelectCityView *city = [[TWSelectCityView alloc] initWithTWFrame:self.view.bounds TWselectCityTitle:@"选择地区"];
    __weak typeof(self)blockself = self;
    [city showCityView:^(NSString *proviceStr, NSString *cityStr, NSString *distr) {
        blockself.strLB.text = [NSString stringWithFormat:@"%@->%@->%@",proviceStr,cityStr,distr];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
