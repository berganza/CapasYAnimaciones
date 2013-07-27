//
//  ViewController.m
//  CapasYAnimaciones
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize capa1, capa2, slider1, slider3;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Primera capa
    capa1 = [CALayer layer];
    capa1.bounds = CGRectMake(0, 0, 100, 100);
    capa1.position = CGPointMake(150, 80);
    capa1.backgroundColor = [UIColor redColor].CGColor;
    
    capa1.cornerRadius=0;
    capa1.opacity=1;
    
    [self.view.layer addSublayer:capa1];
    
    
    // Segunda capa
    capa2 = [CALayer layer];
    capa2.bounds = CGRectMake(0, 0, 100, 100);
    capa2.position = CGPointMake(150, 330);
    capa2.backgroundColor = [UIColor blueColor].CGColor;
    
    [self.view.layer addSublayer:capa2];
    
    
    // Tercer slider para el borde
    slider3.transform = CGAffineTransformMakeRotation(270.0/180*M_PI);
    
}

    // Acciones para la primera capa
-(IBAction)slider1:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [capa1 setCornerRadius:(float) (slider.value)];
}
-(IBAction)slider2:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [capa1 setOpacity:(float) (slider.value)];
}
-(IBAction)hacerCirculo:(id)sender {
    capa1.cornerRadius=50;
    slider1.value = 50;
}


    // Acciones para la segunda capa
- (IBAction)uno:(id)sender {
    capa2.bounds = CGRectMake(0, 0, 30, 80);
}
- (IBAction)dos:(id)sender {
    capa2.bounds = CGRectMake(0, 0, 80, 30);
    capa2.position = CGPointMake(250, 300);
}
- (IBAction)tres:(id)sender {
    capa2.bounds = CGRectMake(0, 0, 130, 80);
}
- (IBAction)cuatro:(id)sender {
    capa2.bounds = CGRectMake(0, 0, 180, 130);
    capa2.position = CGPointMake(150, 330);
}


    // Slider de borde para la primera capa
- (IBAction)slider3:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [capa1 setBorderWidth:(float) (slider.value)];
}

    



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
