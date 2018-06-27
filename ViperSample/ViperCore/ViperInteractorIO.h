//
//  ViperInteractorIO.h
//  ViperSample
//
//  Created by 黄可 on 2018/6/27.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViperInteractorInput <NSObject>
- (void)requestCount;
- (void)increment;
- (void)decrement;
@end

@protocol ViperInteractorOutput <NSObject>
- (void)updateCount:(NSUInteger)count;
@end
