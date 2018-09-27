//
//  HHPerson.m
//  CuntomSetterDemo
//
//  Created by vanke on 2018/9/27.
//  Copyright © 2018 vanke. All rights reserved.
//

#import "HHPerson.h"

#define HHTallMask (1<<0)
#define HHRichMask (1<<1)
#define HHHandsomeMask (1<<2)

// 掩码，一般用来按位与(&)运算的
//#define HHTallMask 1
//#define HHRichMask 2
//#define HHHandsomeMask 4

//#define HHTallMask 0b00000001
//#define HHRichMask 0b00000010
//#define HHHandsomeMask 0b00000100

@interface HHPerson ()
{
    char _personProperty;
}

@end

@implementation HHPerson

- (instancetype)init
{
    if (self = [super init]) {
        _personProperty = 0b00000111;
    }
    return self;
}

#pragma mark - setter && getter methods
- (void)setTall:(BOOL)tall {
    if(tall){
        _personProperty |= (HHTallMask);
    }else{
        _personProperty &= ~(HHTallMask);
    }
}

- (void)setRich:(BOOL)rich {
    if(rich){
        _personProperty |= (HHRichMask);
    }else{
        _personProperty &= ~(HHRichMask);
    }
}

- (void)setHandsome:(BOOL)handsome {
    if(handsome){
        _personProperty |= (HHHandsomeMask);
    }else{
        _personProperty &= ~(HHHandsomeMask);
    }
}


- (BOOL)isTall {
    return !!(_personProperty & (HHTallMask));
}

- (BOOL)isRich {
    return !!(_personProperty & (HHRichMask));
}

- (BOOL)isHandsome {
    return !!(_personProperty & (HHHandsomeMask));
}


@end
