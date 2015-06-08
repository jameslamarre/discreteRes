//
//  ViewController.m
//  Discrete Res
//
//  Created by James La Marre on 6/8/15.
//  Copyright (c) 2015 James La Marre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _webView.scalesPageToFit = YES;
    _webView.autoresizesSubviews = YES;
    _webView.autoresizingMask=(UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    [_webView setBackgroundColor:[UIColor clearColor]];
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"gradient_pc" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    
    self.webView.scrollView.bounces = NO;
    
    [self.webView loadHTMLString:htmlString baseURL:nil];
}

- (void)viewDidLayoutSubviews {
    _webView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

-(BOOL)shouldAutorotate{
    return YES;
}


 -(NSInteger)supportedInterfaceOrientations{
    NSInteger orientationMask = 0;
    if ([self shouldAutorotateToInterfaceOrientation: UIInterfaceOrientationLandscapeLeft])
        orientationMask |= UIInterfaceOrientationMaskLandscapeLeft;
    if ([self shouldAutorotateToInterfaceOrientation: UIInterfaceOrientationLandscapeRight])
        orientationMask |= UIInterfaceOrientationMaskLandscapeRight;
    if ([self shouldAutorotateToInterfaceOrientation: UIInterfaceOrientationPortrait])
        orientationMask |= UIInterfaceOrientationMaskPortrait;
    if ([self shouldAutorotateToInterfaceOrientation: UIInterfaceOrientationPortraitUpsideDown])
        orientationMask |= UIInterfaceOrientationMaskPortraitUpsideDown;
    return orientationMask;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
