//
//  ViewController.m
//  GiftGrab
//
//  Created by Alan Scarpa on 10/15/15.
//  Copyright © 2015 Skytop Designs. All rights reserved.
//

#import "SKYWelcomeViewController.h"
#import "SKYButton.h"

@interface SKYWelcomeViewController ()

@property (weak, nonatomic) IBOutlet UIView *bodyTextContainerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet SKYButton *getStartedButton;

@end

@implementation SKYWelcomeViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self animateUI];
}

- (void)animateUI {
    [UIView animateKeyframesWithDuration:1.2 delay:0 options:0 animations:^{
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.8 animations:^{
            self.bodyTextContainerView.alpha = 1.0;
            self.titleLabel.center = CGPointMake(self.view.frame.size.width/2, 40);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.8 relativeDuration:0.2 animations:^{
            self.getStartedButton.alpha = 1.0;
        }];
    } completion:^(BOOL finished) {
        nil;
    }];
}

@end
