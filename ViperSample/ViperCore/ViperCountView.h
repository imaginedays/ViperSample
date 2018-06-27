//
//  ViperCountView.h
//  ViperSample
//
//  Created by 黄可 on 2018/6/27.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViperCountView <NSObject>
- (void)setCountText:(NSString *)countText;
- (void)setDecrementEnabled:(BOOL)enabled;
@end
