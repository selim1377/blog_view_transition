//
//  PiecesInteraction.m
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import "PiecesInteraction.h"

@interface PiecesInteraction ()

@end

@implementation PiecesInteraction

-(void)setupViewController:(UIViewController *)viewController
{
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                              action:@selector(pan:)];
    
    [viewController.view addGestureRecognizer:gesture];
    self.viewController = viewController;
    
}

-(void)pan:(UIPanGestureRecognizer *)gesture
{
    CGPoint location = [gesture locationInView:self.viewController.view];
    float delta = (float)(location.x - self.initialPoint.CGPointValue.x) / 150.0 ;
    delta = fabsf(delta);
    
    switch (gesture.state) {
        case UIGestureRecognizerStateBegan:
            
            [self.viewController dismissViewControllerAnimated:YES
                                                    completion:NULL];
            
            self.initialPoint = [NSValue valueWithCGPoint:location];
            break;
            
        case UIGestureRecognizerStateChanged:
            
            delta = fmaxf(delta, 0.0);
            delta = fminf(delta, 1.0);
    
            [self updateInteractiveTransition:delta];
            
            break;
            
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateCancelled:
            
            if (gesture.state == UIGestureRecognizerStateCancelled || delta < 0.7) {
                [self cancelInteractiveTransition];
            }
            else
            {
                [self finishInteractiveTransition];
            }
            
            self.initialPoint = nil;
            
            break;
            
        default:
            break;
    }
}


@end
