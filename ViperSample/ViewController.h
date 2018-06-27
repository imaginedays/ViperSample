//
//  ViewController.h
//  ViperSample
//
//  Created by 黄可 on 2018/6/15.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViperCountView.h"
@class ViperCountPresenter;

@interface ViewController : UIViewController<ViperCountView>
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *decrementButton;
@property (weak, nonatomic) IBOutlet UIButton *incrementButton;

@property (nonatomic, strong) ViperCountPresenter *presenter;    //!< 属性名称

@end

