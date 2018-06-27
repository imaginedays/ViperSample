//
//  ViperCountInteractor.h
//  ViperSample
//
//  Created by 黄可 on 2018/6/27.
//  Copyright © 2018年 Robin Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViperInteractorIO.h"

@interface ViperCountInteractor : NSObject<ViperInteractorInput>
@property (nonatomic, weak) id<ViperInteractorOutput> output;    //!< 属性名称
@end
