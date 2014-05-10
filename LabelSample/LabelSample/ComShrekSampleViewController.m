//
//  ComShrekSampleViewController.m
//  LabelSample
//
//  Created by shrek wang on 5/10/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ComShrekSampleViewController.h"

@interface ComShrekSampleViewController ()

@property (weak, nonatomic) IBOutlet UILabel *multipleLineLbl;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConstraint;

@end

@implementation ComShrekSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.multipleLineLbl.text = @"[1st line] I am a very long string to test multiple line label. If it work out, you should see me wrapped in multiple lines.\n[2nd line] Hi, i m the second line.";
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"[view will appear]");
}

- (void)viewWillLayoutSubviews
{
    NSLog(@"[view will layout subviews]");
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"[view did layout subviews]");
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"[view did appear]");
}

- (void)updateViewConstraints
{
    NSLog(@"rootview: [update view constraints]");
    [super updateViewConstraints];
    
    // update label size
    CGSize newSize = [self.multipleLineLbl sizeThatFits:self.multipleLineLbl.frame.size];
    self.heightConstraint.constant = newSize.height;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
