//
//  NavigationBehaviour.h
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import "Behaviour.h"

@interface PresentationBehaviour : Behaviour <UIViewControllerTransitioningDelegate>

@property(nonatomic, weak) IBOutlet id<UIViewControllerAnimatedTransitioning> presentBehaviour;
@property(nonatomic, weak) IBOutlet id<UIViewControllerAnimatedTransitioning> dismissBehaviour;
@property(nonatomic, weak) IBOutlet UIPercentDrivenInteractiveTransition     *interactiveDismissBehaviour;

@property (nonatomic,assign) BOOL isInteractive;

@end
