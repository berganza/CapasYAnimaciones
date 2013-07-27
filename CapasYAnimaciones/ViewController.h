//
//  ViewController.h
//  CapasYAnimaciones
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) CALayer * capa1;
@property(nonatomic, strong) CALayer * capa2;


-(IBAction)slider1:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *slider1;
-(IBAction)slider2:(id)sender;
-(IBAction)hacerCirculo:(id)sender;



- (IBAction)uno:(id)sender;
- (IBAction)dos:(id)sender;
- (IBAction)tres:(id)sender;
- (IBAction)cuatro:(id)sender;



@property (strong, nonatomic) IBOutlet UISlider *slider3;
- (IBAction)slider3:(id)sender;


@end
