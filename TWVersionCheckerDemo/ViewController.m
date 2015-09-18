//
//  ViewController.m
//  XTVersion
//
//  Created by 何振东 on 15/9/8.
//  Copyright © 2015年 LZA. All rights reserved.
//

#import "ViewController.h"
#import "TWVersionChecker.h"

@interface ViewController () <UIAlertViewDelegate>
- (IBAction)checkVersion:(id)sender;
@property (copy, nonatomic) NSString *updateUrl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)checkVersion:(id)sender {
    [TWVersionChecker checkVersionForAppId:@"899155970" completionHandler:^(BOOL hasNew, NSString *updateText, NSString *updateUrl, NSString *version) {
        NSString *appName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
        NSString *title = [NSString stringWithFormat:@"%@ %@", appName, version];
        self.updateUrl = updateUrl;

        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:updateText delegate:self cancelButtonTitle:@"忽略" otherButtonTitles:@"更新", nil];
        [alertView show];
    }];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.updateUrl]];
    }
}

@end
