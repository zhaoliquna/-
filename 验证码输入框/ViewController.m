//
//  ViewController.m
//  验证码输入框
//
//  Created by chongzu20 on 2018/8/3.
//  Copyright © 2018年 chongzu20. All rights reserved.
//

#import "ViewController.h"
#import "LQ_PasswordView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    LQ_PasswordView *view = [[LQ_PasswordView alloc]initWithFrame:CGRectMake(63, 100, self.view.frame.size.width-63*2, 40)];
    view.num = 4;
    
    
    __weak typeof(view)weakSelf = view;
    view.callBackBlock = ^(NSString *text) {
        
        if ([text isEqualToString:@"3456"]) {
            
        }else{
            
            [weakSelf cleanPassword:@"error"];
            
        }
        
        NSLog(@"%@",text);
    };
    [view showPassword];
    [self.view addSubview:view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
