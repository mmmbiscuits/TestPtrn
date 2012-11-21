//
//  TestPatternView.m
//  TestPtrn
//
//  Created by Ryan Smale on 21/11/12.
//  Copyright (c) 2012 Ryan Smale. All rights reserved.
//

#import "TestPatternView.h"

@implementation TestPatternView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    NSLog(@" height:%f width:%f",self.frame.size.height, self.frame.size.width);
    
    CGContextRef context = UIGraphicsGetCurrentContext();

    //RED
    CGContextSetFillColorWithColor (context, [UIColor redColor].CGColor);
    CGContextFillRect(context, CGRectMake(0, 0, self.frame.size.width/3, self.frame.size.height/6));
    //GREEN
    CGContextSetFillColorWithColor (context, [UIColor greenColor].CGColor);
    CGContextFillRect(context, CGRectMake(0, self.frame.size.height/6, self.frame.size.width/3, self.frame.size.height/6));
    //BLUE
    CGContextSetFillColorWithColor (context, [UIColor blueColor].CGColor);
    CGContextFillRect(context, CGRectMake(0, self.frame.size.height/6 * 2, self.frame.size.width/3, self.frame.size.height/6));
    
    
    //RED
    CGContextSetFillColorWithColor (context, [UIColor cyanColor].CGColor);
    CGContextFillRect(context, CGRectMake(0, self.frame.size.height/6 * 3, self.frame.size.width/3, self.frame.size.height/6));
    //GREEN
    CGContextSetFillColorWithColor (context, [UIColor magentaColor].CGColor);
    CGContextFillRect(context, CGRectMake(0, self.frame.size.height/6 * 4, self.frame.size.width/3, self.frame.size.height/6));
    //BLUE
    CGContextSetFillColorWithColor (context, [UIColor yellowColor].CGColor);
    CGContextFillRect(context, CGRectMake(0, self.frame.size.height/6 * 5,self.frame.size.width/3, self.frame.size.height/6));
    
    
    //grey scale
    int positioningInt = 0;
    float colourRangeFloat = 0;
    
    while (positioningInt <= 10) {
        NSLog(@"color range float: %f",colourRangeFloat);
        CGContextSetFillColorWithColor (context, [UIColor colorWithRed:colourRangeFloat green:colourRangeFloat blue:colourRangeFloat alpha:1].CGColor);
        CGContextFillRect(context, CGRectMake(self.frame.size.width/2, self.frame.size.height/11 * positioningInt, self.frame.size.width/2, self.frame.size.height/11));
        
        positioningInt += 1;
        colourRangeFloat += 0.1;
    }
    

}


@end
