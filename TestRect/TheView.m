//
//  TheView.m
//  TestRect
//
//  Created by Pierre-Alexandre Poirier on 2013-06-14.
//  Copyright (c) 2013 IDEO. All rights reserved.
//

#import "TheView.h"

@implementation TheView

int num_columns;
float column_width;
float screen_width;
float screen_height;
float random_color;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)update
{
    [self setNeedsDisplay];
    
}

- (void)drawRect:(CGRect)rect
{
    // making shit kosher to draw on that view/context
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set up
    num_columns = 7;
    screen_width = rect.size.width;
    screen_height = rect.size.height;
    column_width = screen_width/num_columns;
    //random_color = arc4random()%255;
       
    
    // giving the background a color
    CGContextSetRGBFillColor(context, 255, 255, 255, 1);
    CGContextFillRect(context, CGRectMake(0, 0, screen_width, screen_height));
    
    // multiple color bars
    for (int i = 0; i < num_columns; i++) {
        random_color = (arc4random()%1000)/1000.0f;
        CGContextSetRGBFillColor(context, (arc4random()%1000)/1000.0f, (arc4random()%1000)/1000.0f, (arc4random()%1000)/1000.0f, 1);
        CGContextFillRect(context, CGRectMake(i*column_width, 0, column_width, screen_height));
    }
    
    // strokes for the bars
//    for (int i = 0; i < num_columns; i++) {
//        CGContextSetRGBStrokeColor(context, 0, 0, 0, 0.5);
//        CGContextStrokeRect(context, CGRectMake(i*column_width, 0, column_width, screen_height));
//    }
    
    
    // printing stuff
    // to understand %d and %f -> http://goo.gl/fdsNs
    NSLog( @"screen width is: %f", screen_width );
    NSLog( @"screen height is: %f", screen_height );
    NSLog( @"column width is: %f", column_width );
    //NSLog( @"the color number is: %f", random_color );
    
}

@end
