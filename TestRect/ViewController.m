//
//  ViewController.m
//  TestRect
//
//  Created by Pierre-Alexandre Poirier on 2013-06-14.
//  Copyright (c) 2013 IDEO. All rights reserved.
//

#import "ViewController.h"
#import "TheView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// setting the 'frame rate'
    timer = [NSTimer scheduledTimerWithTimeInterval:1/8.0f target:self selector:@selector(updateMyView) userInfo:Nil repeats:YES];
}

- (void)updateMyView
{
    // updating the view
    [myView update];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
