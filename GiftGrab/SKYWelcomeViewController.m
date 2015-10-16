//
//  ViewController.m
//  GiftGrab
//
//  Created by Alan Scarpa on 10/15/15.
//  Copyright © 2015 Skytop Designs. All rights reserved.
//

#import "SKYWelcomeViewController.h"

@interface SKYWelcomeViewController ()
@property (weak, nonatomic) IBOutlet UIView *bodyTextContainerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

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
    [UIView animateWithDuration:1.0 animations:^{
        self.bodyTextContainerView.alpha = 1.0;
        self.titleLabel.center = CGPointMake(self.view.frame.size.width/2, 40);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
