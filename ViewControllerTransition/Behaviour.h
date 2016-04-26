//
//  Behaviour.h
//  ViewControllerTransition
//
//  Created by Selım on 26/04/16.
//  Copyright © 2016 PeakGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Behaviour : UIControl

//! object that this controller life will be bound to
@property(nonatomic, weak) IBOutlet id owner;

@end
