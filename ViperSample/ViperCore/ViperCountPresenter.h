//
//  ViperCountPresenter.h
//  ViperSample
//
//  Created by 黄可 on 2018/6/27.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViperInteractorIO.h"
#import "ViperCountView.h"


@interface ViperCountPresenter : NSObject<ViperInteractorOutput>

@property (nonatomic, weak) id<ViperCountView> view;    //!< 属性名称
@property (nonatomic, strong) id<ViperInteractorInput> interactor;    //!< 属性名称

- (void)updateView;
- (void)increment;
- (void)decrement;

@end
