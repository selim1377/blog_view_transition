//
//  PiecesViewController.h
//  ViewControllerTransition
//
//  Created by Selim on 24.02.16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PiecesViewController : UIViewController <UIViewControllerTransitioningDelegate, UINavigationControllerDelegate>

@property (nonatomic,strong) IBOutlet id <UIViewControllerAnimatedTransitioning> presentingAnimationController;
@property (nonatomic,strong) IBOutlet id <UIViewControllerAnimatedTransitioning> dismissingAnimationController;

@property (nonatomic,strong) id <UIViewControllerInteractiveTransitioning> dismissingInteractionController;

- (IBAction)dismiss:(id)sender;

@end
