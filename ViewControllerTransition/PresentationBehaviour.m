//
//  NavigationBehaviour.m
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import "PresentationBehaviour.h"

@implementation PresentationBehaviour

-(void)setOwner:(id)owner
{
    [super setOwner:owner];
    
    if ([owner isKindOfClass:[UIViewController class]]) {
        
        UIViewController *vc = owner;
        vc.transitioningDelegate = self;
    }
}

#pragma mark - TransitioningDelegate

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return self.presentBehaviour;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return self.dismissBehaviour;
}


-(id<UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id<UIViewControllerAnimatedTransitioning>)animator
{
    if (self.isInteractive) {
        return self.interactiveDismissBehaviour;
    }
    
    return nil;
}


@end
