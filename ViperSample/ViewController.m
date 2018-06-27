//
//  ViewController.m
//  ViperSample
//
//  Created by 黄可 on 2018/6/15.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import "ViewController.h"
#import "ViperCountPresenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.countLabel.text = nil;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.presenter updateView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)decrement:(id)sender {
    [self.presenter decrement];
}

- (IBAction)increment:(id)sender {
    [self.presenter increment];
}

- (void)setCountText:(NSString *)countText {
    self.countLabel.text = countText;
}

- (void)setDecrementEnabled:(BOOL)enabled {
    self.decrementButton.enabled = enabled;
}

@end
