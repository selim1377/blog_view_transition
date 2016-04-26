//
//  DestinationViewController.m
//  ViewControllerTransition
//
//  Created by Selım on 08/12/15.
//  Copyright © 2015 PeakGames. All rights reserved.
//

#import "DestinationViewController.h"

@interface DestinationViewController ()<UIViewControllerTransitioningDelegate>

- (IBAction)returnTo:(id)sender;
@end

@implementation DestinationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnTo:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
