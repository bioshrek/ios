//
//  ComShrekSampleViewController.m
//  i18n
//
//  Created by shrek wang on 5/12/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ComShrekSampleViewController.h"

@interface ComShrekSampleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *i18nLbl;

@end

@implementation ComShrekSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.i18nLbl.text = NSLocalizedString(@"lbl_hello", "hello label");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
