//
//  ViewController.h
//  TestRect
//
//  Created by Pierre-Alexandre Poirier on 2013-06-14.
//  Copyright (c) 2013 IDEO. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TheView;

@interface ViewController : UIViewController
{
    IBOutlet TheView *myView;
    NSTimer *timer;
}

@end
