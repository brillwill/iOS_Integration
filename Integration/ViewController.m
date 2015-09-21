//
//  ViewController.m
//  Integration
//
//  Created by William Yu on 7/14/15.
//  Copyright (c) 2015 GDC. All rights reserved.
//

#import "ViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleShowButton:(id)sender {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = @"This is first HUD from Pod";
    hud.dimBackground = YES;
    hud.mode = MBProgressHUDModeAnnularDeterminate;
    hud.progress = 0.6;
    
    __block __weak ViewController * theSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:theSelf.view animated:YES];
    });
    
}

@end
