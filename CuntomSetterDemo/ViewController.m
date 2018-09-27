//
//  ViewController.m
//  CuntomSetterDemo
//
//  Created by vanke on 2018/9/27.
//  Copyright © 2018 vanke. All rights reserved.
//

#import "ViewController.h"
#import "HHPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    HHPerson *person = [[HHPerson alloc] init];
    NSLog(@"tall:%d rich:%d handsome:%d",
          person.tall, person.rich, person.handsome);
    
}


@end
