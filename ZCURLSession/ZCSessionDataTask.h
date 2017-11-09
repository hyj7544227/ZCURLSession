//
//  ZCSessionDataTask.h
//  ZCURLSession
//
//  Created by 曾超 on 17/11/9.
//  Copyright © 2017年 曾超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCSessionDataTask : NSObject

@property (nonatomic,strong)NSString *url;


+(ZCSessionDataTask *)shareinstance;

-(void)dataTaskGetBlockData:(void(^)(id))data;

@end
