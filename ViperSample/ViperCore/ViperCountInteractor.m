//
//  ViperCountInteractor.m
//  ViperSample
//
//  Created by 黄可 on 2018/6/27.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import "ViperCountInteractor.h"

@interface ViperCountInteractor()
@property (nonatomic, assign) NSUInteger count;    //!< 属性名称
@end

@implementation ViperCountInteractor

- (void)decrement {
    --self.count;
    [self sendCount];
}

- (void)increment {
    ++self.count;
    [self sendCount];
}

- (void)requestCount {
    [self sendCount];
}

- (BOOL)canDecrement {
    return (self.count >0);
}

- (void)sendCount {
    [self.output updateCount:self.count];
}

@end
