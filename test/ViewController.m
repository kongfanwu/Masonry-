//
//  ViewController.m
//  test
//
//  Created by 孔凡伍 on 15/6/25.
//  Copyright (c) 2015年 kongfanwu. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *topView1;
@property (weak, nonatomic) IBOutlet UIImageView *topView2;
@property (weak, nonatomic) IBOutlet UIImageView *bottomView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    _topView1.translatesAutoresizingMaskIntoConstraints = NO;
    
    /*
    UIView *superView = self.view;
    
    [_topView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(superView).mas_offset(10);
        make.left.mas_equalTo(superView).mas_offset(10);
        make.right.mas_equalTo(superView.mas_right).mas_offset(-10);
        make.bottom.mas_equalTo(superView.mas_bottom).mas_offset(-10);
//        make.width.height.mas_equalTo(@100);
        
    }];
    
    [_topView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(superView).mas_offset(10);
        make.right.mas_equalTo(superView).mas_offset(-10);
        make.bottom.mas_equalTo(superView.mas_bottom).mas_offset(-10);
        make.width.height.mas_equalTo(_topView1);
        make.width.height.mas_equalTo(@100);
    }];
    
    [_bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_topView1.mas_bottom).offset(10);
        make.left.equalTo(superView);
        make.bottom.right.equalTo(superView).offset(-10);

    }];
     */
    
    UIView *greenView = UIView.new;
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.blackColor.CGColor;
    greenView.layer.borderWidth = 2;
    [self.view addSubview:greenView];
    
    UIView *redView = UIView.new;
    redView.backgroundColor = UIColor.redColor;
    redView.layer.borderColor = UIColor.blackColor.CGColor;
    redView.layer.borderWidth = 2;
    [self.view addSubview:redView];
    
    UIView *blueView = UIView.new;
    blueView.backgroundColor = UIColor.blueColor;
    blueView.layer.borderColor = UIColor.blackColor.CGColor;
    blueView.layer.borderWidth = 2;
    [self.view addSubview:blueView];
    
    UIView *orangeView = UIView.new;
    orangeView.backgroundColor = UIColor.yellowColor;
    orangeView.layer.borderColor = UIColor.blackColor.CGColor;
    orangeView.layer.borderWidth = 2;
    [blueView addSubview:orangeView];
    
    UIView *superview = self.view;
    int padding = 10;
    
    
    
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(superview).offset(padding);
        make.right.equalTo(redView.mas_left).offset(-10);
        make.height.equalTo(@100).priority(UILayoutPriorityDefaultLow);
        make.height.equalTo(@200).priorityHigh();
        
    }];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview).offset(padding);
        make.left.equalTo(greenView.mas_right).offset(padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
        make.width.height.equalTo(greenView);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(greenView.mas_bottom).offset(padding);
        make.left.equalTo(superview).offset(padding);
        make.bottom.right.equalTo(superview).offset(-padding);
        
    }];
    
    [orangeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(blueView).insets(UIEdgeInsetsMake(50, 50, 50, 50));
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
