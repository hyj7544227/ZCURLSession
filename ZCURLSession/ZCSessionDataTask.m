//
//  ZCSessionDataTask.m
//  ZCURLSession
//
//  Created by 曾超 on 17/11/9.
//  Copyright © 2017年 曾超. All rights reserved.
//

#import "ZCSessionDataTask.h"

@implementation ZCSessionDataTask


+(ZCSessionDataTask *)shareinstance{
    
    return [[ZCSessionDataTask alloc]init];
}

-(void)dataTaskGetBlockData:(void (^)(id lala))data1{
    NSURLSession *session = [NSURLSession sharedSession];

    NSURLSessionDataTask *datatask = [session dataTaskWithURL:[NSURL URLWithString:self.url] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data1) {
            data1(data);
        }
    }];
    [datatask resume];
}

@end
