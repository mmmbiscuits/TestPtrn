//
//  ViewController.m
//  TestPtrn
//
//  Created by Ryan Smale on 21/11/12.
//  Copyright (c) 2012 Ryan Smale. All rights reserved.
//

#import "ViewController.h"
#import "TestPatternView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TestPatternView * testView = [[TestPatternView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    [testView addGestureRecognizer:singleFingerTap];
    
    [self.view addSubview:testView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    
    CGPoint location = [recognizer locationInView:[recognizer.view superview]];
  
    float  brightness = location.y / recognizer.view.frame.size.height;
    
    NSLog(@"%f",brightness);
    [[UIScreen mainScreen] setBrightness: brightness];
    
    NSLog(@"%f, %f",location.y ,location.x);
    
    //Do stuff here...
}



@end
