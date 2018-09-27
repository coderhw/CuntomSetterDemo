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
//    char _personProperty;
    //位域
    struct {
        char tall : 1;  //0000 0001
        char rich : 1;  //0000 0010
        char handsome : 1; //0000 0100
    } _personProperty;
}

@end

@implementation HHPerson

- (instancetype)init
{
    if (self = [super init]) {
//        _personProperty = 0b00000111;
    }
    return self;
}

#pragma mark - setter && getter methods
- (void)setTall:(BOOL)tall {
    
    _personProperty.tall = tall;
}

- (void)setRich:(BOOL)rich {
    _personProperty.rich = rich;

}

- (void)setHandsome:(BOOL)handsome {
    _personProperty.handsome = handsome;

}


- (BOOL)isTall {
    return _personProperty.tall;
}

- (BOOL)isRich {
    return _personProperty.rich;
}

- (BOOL)isHandsome {
    return _personProperty.handsome;
}


@end
