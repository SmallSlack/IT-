//
//  ViewController.m
//  IT深浅拷贝
//
//  Created by student on 16/5/31.
//  Copyright © 2016年 song. All rights reserved.
//
//copy
//在拷贝中 分为 浅拷贝和深拷贝
//浅拷贝 copy 只拷贝对象的地址而不拷贝对象的内容
//深拷贝 mutableCopy 拷贝对象的内容并且拷贝指针地址

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //非容器类
    //不可变对象
//    {
//        NSString *str = @"123456";
//        
//        NSString *strCopy = [str copy];
//        NSString *strMutableCopy = [str mutableCopy];
//        
//        NSLog(@"%p : %p",&str,str);
//        NSLog(@"%p : %p",&strCopy,strCopy);
//        NSLog(@"%p : %p",&strMutableCopy,strMutableCopy);
//        
//        
//        //非容器类中 不可变对象 copy就是浅拷贝，只拷贝对象指针地址，而不拷贝对象内容 mutableCopy是深拷贝 对象内容和对象指针都拷贝一份
//    }
    
    
    {
        //非容器的可变对象
        
        
        NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"1234"];
        NSString *strCopy = [str copy];
        NSString *strMutableCopy = [str mutableCopy];
        
        NSLog(@"%p : %p",&str,str);
        NSLog(@"%p : %p",&strCopy,strCopy);
        NSLog(@"%p : %p",&strMutableCopy,strMutableCopy);
        
        [strCopy stringByAppendingString:@"hello world"];
        NSLog(@"%@ : %@ : %@",str,strCopy,strMutableCopy);
        
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
