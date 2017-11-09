//
//  ViewController.m
//  ZCURLSession
//
//  Created by 曾超 on 17/11/9.
//  Copyright © 2017年 曾超. All rights reserved.
//

#import "ViewController.h"
#import "ZCSessionDataTask.h"


@interface ViewController ()<NSURLSessionDelegate>

@property (nonatomic,strong)NSURLSession *session;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self originSessionDataTask];
    [self nonOriginalDataTask];
}

-(void)originSessionDataTask{

    self.session = [NSURLSession sharedSession];
    NSURLSessionDataTask  *task = [self.session dataTaskWithURL:[NSURL URLWithString:@"http://api.ds.lingshi.cccwei.com/?cid=763783&uid=0&tms=20160426171233&sig=fd6b9489349687a4&wssig=afc1654d8a949ebd&os_type=3&version=23&channel_name=qihoo&srv=2405&pg_cur=1&pg_size=20&since_id=0"
                                                                 ] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary *dd = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"dd%@dd",dd);
        // NSLog(@"%11@11",data);
    }];
    [task resume];

}

-(void)nonOriginalDataTask{
    ZCSessionDataTask *tt =[ZCSessionDataTask shareinstance];
    tt.url =@"http://api.ds.lingshi.cccwei.com/?cid=763783&uid=0&tms=20160426171233&sig=fd6b9489349687a4&wssig=afc1654d8a949ebd&os_type=3&version=23&channel_name=qihoo&srv=2405&pg_cur=1&pg_size=20&since_id=0";

    [tt dataTaskGetBlockData:^(id lala) {
        NSLog(@"%@",lala);
    }];
}

-(void)URLSession:(NSURLSession *)session downloadTask:(nonnull NSURLSessionDownloadTask *)downloadTask didResumeAtOffset:(int64_t)fileOffset expectedTotalBytes:(int64_t)expectedTotalBytes{

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
