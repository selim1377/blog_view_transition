//
//  FadeInBehaviour.m
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import "FadeInBehaviour.h"
#import "TransitionViewController.h"

@implementation FadeInBehaviour

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1.0;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *source = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *target = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    
    CGRect finalFrame     = [transitionContext finalFrameForViewController:target];
    
    target.view.frame = finalFrame;
    target.view.alpha = 0.0f;
    [containerView addSubview:target.view];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
                     animations:^{
                         source.view.alpha = 1.0f;
                         target.view.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

@end
