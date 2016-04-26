//
//  PiecesInteraction.h
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PiecesInteraction : UIPercentDrivenInteractiveTransition

-(void)setupViewController:(UIViewController *)viewController;

@property (nonatomic,weak) UIViewController *viewController;
@property (nonatomic,strong) NSValue *initialPoint;

@end
