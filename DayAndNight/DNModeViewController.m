//
//  DNModeViewController.m
//  DayAndNight
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "DNModeViewController.h"

@interface DNModeViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UISegmentedControl *switcher;

@end

@implementation DNModeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(15, 150, self.view.frame.size.width - 30, 20)];
    self.label.text = @"Wake up fool!";
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    
    self.switcher = [[UISegmentedControl alloc] initWithItems:@[@"Day", @"Night"]];
//    self.switcher.frame = CGRectMake(self.view.frame.size.width - (self.switcher.frame.size.width / 2), 20, self.switcher.frame.size.width, self.switcher.frame.size.height);
    self.switcher.tintColor = [UIColor blackColor];
    self.switcher.selectedSegmentIndex = 0;
    [self.switcher addTarget:self action:@selector(switchTimeOfDay) forControlEvents:UIControlEventValueChanged];
    [self.navigationController.navigationBar addSubview:self.switcher];
    
}

- (void)switchTimeOfDay {
    if (self.switcher.selectedSegmentIndex == 0) {
        self.label.text = @"Wake up fool!";
        [self.navigationController.navigationBar setBarTintColor:[UIColor yellowColor]];
        self.switcher.tintColor = [UIColor blackColor];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
    } else {
        self.label.text = @"Go to sleep, man!";
        [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
        self.switcher.tintColor = [UIColor whiteColor];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
