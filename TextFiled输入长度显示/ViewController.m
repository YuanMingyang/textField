//
//  ViewController.m
//  TextFiled输入长度显示
//
//  Created by Yang on 2018/2/24.
//  Copyright © 2018年 A589. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Limit.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textFiled lengthLimit:^{
        if (self.textFiled.text.length>5) {
            self.textFiled.text = [self.textFiled.text substringToIndex:5];
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
