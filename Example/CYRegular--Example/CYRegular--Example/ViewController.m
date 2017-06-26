//
//  ViewController.m
//  CYRegular--Example
//
//  Created by 柴源 on 2017/6/26.
//  Copyright © 2017年 柴源. All rights reserved.
//

#import "ViewController.h"
#import "CYRegular.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self regularTest];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)regularTest
{
    BOOL isAvailableAccount = [@"ssersjyopjs" isAvailableAccount:3 maxLength:20];
    
    BOOL isAllNumber = [@"134388s62542" isAllNumber];
    
    BOOL isLightPhone = [@"13438862542" isLightMobileNumber];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
