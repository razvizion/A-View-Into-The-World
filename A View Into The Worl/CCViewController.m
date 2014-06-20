//
//  CCViewController.m
//  A View Into The Worl
//
//  Created by Michał Kozak on 21.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect myViewsFrame = CGRectMake(20, 250, 200, 60);
    UIView *myView = [[UIView alloc]initWithFrame:myViewsFrame];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
    UIButton *anotherButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    anotherButton.frame = CGRectMake(40, 20, 200, 100);
    
    anotherButton.backgroundColor = [UIColor greenColor];
    [anotherButton setTitle:@"Press" forState:UIControlStateNormal];
    [self.view addSubview:anotherButton];
    [myView removeFromSuperview];
    
    [anotherButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)didPressButton:(UIButton *)button{
    NSLog(@"Lalalal");
}

@end
