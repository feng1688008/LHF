//
//  ViewController.m
//  CocoaPodsDemo
//
//  Created by 李洪峰 on 15/11/19.
//  Copyright (c) 2015年 LHF. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    AFHTTPRequestOperationManager *mannager = [AFHTTPRequestOperationManager manager];
    NSString *string = @"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=1&category_id=%0";
    mannager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [mannager GET: string parameters:@{@"nih":@"sdf"} success:^(AFHTTPRequestOperation * Operation, id object) {
        NSLog(@"请求成功");
    } failure:^(AFHTTPRequestOperation * asdf, NSError * asdfas) {
        NSLog(@"请求失败");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
