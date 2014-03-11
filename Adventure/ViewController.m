//
//  ViewController.m
//  Adventure
//
//  Created by Aaron Dufall on 11/03/2014.
//  Copyright (c) 2014 Aaron Dufall. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *eatBoxButton;
@property (weak, nonatomic) IBOutlet UIButton *cleanBoxButton;



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    UIViewController *vc = segue.destinationViewController;
    vc.title = sender.titleLabel.text;
}




@end
