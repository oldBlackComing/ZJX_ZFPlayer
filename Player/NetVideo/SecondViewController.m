//
//  SecondViewController.m
//  Player
//
//  Created by 任子丰 on 16/3/3.
//  Copyright © 2016年 任子丰. All rights reserved.
//

#import "SecondViewController.h"
#import "NetMoviePlayerViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].statusBarHidden = NO;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NetMoviePlayerViewController *movie = (NetMoviePlayerViewController *)segue.destinationViewController;
    NSURL *URL = [NSURL URLWithString:@"http://baobab.cdn.wandoujia.com/14468618701471.mp4"];
    movie.videoURL = URL;
}


@end
