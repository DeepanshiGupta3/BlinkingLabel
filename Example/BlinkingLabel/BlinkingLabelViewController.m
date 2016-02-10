//
//  BlinkingLabelViewController.m
//  BlinkingLabel
//
//  Created by Nakul on 02/09/2016.
//  Copyright (c) 2016 Nakul. All rights reserved.
//

#import "BlinkingLabelViewController.h"


@interface BlinkingLabelViewController ()
@property BOOL isBlinking;
@property BlinkingLabel *blinkingLabel;
@property UIButton *toggleButton;
@end

@implementation BlinkingLabelViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.isBlinking=false;
    self.blinkingLabel=[[BlinkingLabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
    self.blinkingLabel.text=@"I Blink!";
    self.blinkingLabel.font=[UIFont systemFontOfSize:20];
    [self.view addSubview:self.blinkingLabel];
    [self.blinkingLabel startBlinking];
    self.isBlinking=YES;
    self.toggleButton=[[UIButton alloc] initWithFrame:CGRectMake(10, 60, 125, 30)];
    [self.toggleButton setTitle:@"Toggle Blinking" forState:normal];
    [self.toggleButton setTitleColor:[UIColor redColor] forState:normal];
    [self.toggleButton addTarget:self action:@selector(toggleBlinking) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.toggleButton];
}
-(void) toggleBlinking
{
    if(self.isBlinking)
    {
        [self.blinkingLabel stopBlinking];
        
    }
    else
    {
        [self.blinkingLabel startBlinking];
    }
    self.isBlinking=!self.isBlinking;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
