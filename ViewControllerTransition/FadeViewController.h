//
//  FadeViewController.h
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FadeViewController : UIViewController <UIViewControllerTransitioningDelegate>

@property (nonatomic,strong) IBOutlet id <UIViewControllerAnimatedTransitioning> presentAnimationController;
@property (nonatomic,strong) IBOutlet id <UIViewControllerAnimatedTransitioning> dismissAnimationController;

@end
