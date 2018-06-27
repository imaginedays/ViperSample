//
//  ViperCountPresenter.m
//  ViperSample
//
//  Created by 黄可 on 2018/6/27.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import "ViperCountPresenter.h"

@interface ViperCountPresenter()
@property (nonatomic, strong)   NSNumberFormatter*  countFormatter;
@end

@implementation ViperCountPresenter

- (void)updateView {
    [self.interactor requestCount];
}

- (void)increment {
    [self.interactor increment];
}

- (void)decrement {
    [self.interactor decrement];
}

- (void)updateCount:(NSUInteger)count {
    [self.view setCountText: [self formattedCount:count]];
    [self.view setDecrementEnabled:[self canDecrementCount:count]];
}

- (BOOL)canDecrementCount:(NSUInteger)count {
    return (count >0);
}

- (NSString*)formattedCount:(NSUInteger)count {
    return [self.countFormatter stringFromNumber:@(count)];
}

- (NSNumberFormatter*)countFormatter
{
    if (_countFormatter == nil)
    {
        _countFormatter = [[NSNumberFormatter alloc] init];
        [_countFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    }
    
    return _countFormatter;
}

@end
