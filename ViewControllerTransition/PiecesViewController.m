//
//  PiecesViewController.m
//  ViewControllerTransition
//
//  Created by Selim on 24.02.16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import "PiecesViewController.h"
#import "PiecesTransition.h"
#import "PiecesInteraction.h"


@implementation PiecesViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    for (UIGestureRecognizer *gesture  in [self.view gestureRecognizers]) {
        [self.view removeGestureRecognizer:gesture];
    }
    
    PiecesTransition *transition = [PiecesTransition new];
    self.dismissingAnimationController = transition;
    
    PiecesInteraction *interaction = [PiecesInteraction new];
    [interaction setupViewController:self];
    self.dismissingInteractionController = interaction;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return self.presentingAnimationController;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return self.dismissingAnimationController;
}

-(id<UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id<UIViewControllerAnimatedTransitioning>)animator
{
    return self.dismissingInteractionController;
}

-(id<UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id<UIViewControllerAnimatedTransitioning>)animator
{
    return nil;
}

- (IBAction)dismiss:(id)sender
{
    self.dismissingInteractionController = nil;
    
    [self dismissViewControllerAnimated:YES
                             completion:NULL];
}
@end
