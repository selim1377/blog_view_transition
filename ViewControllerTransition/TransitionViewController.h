//
//  TransitionViewController.h
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransitionViewController : UIViewController <UIViewControllerTransitioningDelegate, UINavigationControllerDelegate>

@property (nonatomic,strong) IBOutlet id <UIViewControllerAnimatedTransitioning> presentingTransitionDelegate;
@property (nonatomic,strong) IBOutlet id <UIViewControllerAnimatedTransitioning> dismissingTransitionDelegate;

@end
