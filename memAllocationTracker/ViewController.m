//
//  ViewController.m
//  memAllocationTracker
//
//  Created by gaoxiaowei on 2018/7/10.
//  Copyright © 2018年 51vv. All rights reserved.
//

#import "ViewController.h"
#import "memAllocationTracker-Swift.h"
//#import "SwiftyJSON-Swift.h"
//#import "Alamofire-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBtn1:(id)sender {
    char*a=malloc(100*1024*1024);
    NSLog(@"%p",a);
}
- (IBAction)onBtn2:(id)sender {
    char*a=malloc(100*1024*1024);
    NSLog(@"%p",a);
    for (int i=0; i<1024*1024*3; ++i) {
        a[i]=rand();
    }
}
- (IBAction)onBtn3:(id)sender {
    @try {
        NSString *str = @"abc";
        [str substringFromIndex:111]; // 程序到这里会崩
//      NSArray*array =@[@1,@2,@3];
//      NSNumber *number =array[4];
    }
    
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        NSLog(@"@finally");
        
    }
    
}
- (IBAction)onBtn4:(id)sender {
    swiftWrapper *helloss = [[swiftWrapper alloc]initWithAddress:@"上海"gender:@"男"];
    [helloss method];
    
    //swiftWrapper2 *helloss2 = [[swiftWrapper2 alloc]initWithAddress:@"上海"gender:@"男"];
    //[helloss2 method];
    
    //http://101.200.91.34/reportidfa?idfa=0ED54D02-2A02-4D4B-887A-F31103EC154D&mid=784a810ade6b45ecabfaa5fac7901a90
    
    NSString * url=[NSString stringWithFormat:@"http://101.200.91.34/reportidfa?idfa=%@&mid=%@",@"0ED54D02-2A02-4D4B-887A-F31103EC154D",@"784a810ade6b45ecabfaa5fac7901a90"];
    [AFWrapper requestGETURLWithStrURL:url success:^(NSString * _Nonnull response) {
        NSLog(@"AFWrapper:requestGETURLWithStrURL success,response:%@",response);
        
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"AFWrapper:requestGETURLWithStrURL Succ,error:%@",error.description);
    }];
    
}

@end
