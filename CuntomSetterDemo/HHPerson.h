//
//  HHPerson.h
//  CuntomSetterDemo
//
//  Created by vanke on 2018/9/27.
//  Copyright © 2018 vanke. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHPerson : NSObject

@property (assign, nonatomic, getter=isTall) BOOL tall;
@property (assign, nonatomic, getter=isRich) BOOL rich;
@property (assign, nonatomic, getter=isHandsome) BOOL handsome;

@end

NS_ASSUME_NONNULL_END
