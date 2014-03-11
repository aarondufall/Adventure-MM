//
//  DestinationViewController.m
//  Adventure
//
//  Created by Aaron Dufall on 11/03/2014.
//  Copyright (c) 2014 Aaron Dufall. All rights reserved.
//

#import "DestinationViewController.h"
#import "ViewController.h"

@interface DestinationViewController ()
@property (weak, nonatomic) IBOutlet UITextView *storyEndingTextView;

@end

@implementation DestinationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindFromDestinationViewController:(UIStoryboardSegue *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
    ViewController *rootView = self.navigationController.viewControllers[0];
    
    rootView.lastEndingTextView.text = [NSString stringWithFormat:@"Your Last ending was: %@", self.storyEndingTextView.text];
}



@end
