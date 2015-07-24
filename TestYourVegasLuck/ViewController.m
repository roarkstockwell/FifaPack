//
//  ViewController.m
//  TestYourVegasLuck
//
//  Created by Roark on 7/23/15.
//  Copyright (c) 2015 Dev Mountain. All rights reserved.
//

#import "ViewController.h"
#import "PackViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *packLuckButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"GrassTexture"]];

}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"openPackSegue"])
    {
        PackViewController *packVC = segue.destinationViewController;
        
        int rarityNumber = arc4random_uniform(12); //options 0,1,2,3,4,5,6,7,8,9,10,11
        int imageNumber = arc4random_uniform(26);
        
        if (rarityNumber == 0) {
            //rare pack
            
            packVC.imageName = [NSString stringWithFormat:@"Rare%d", imageNumber];
            
            packVC.rarityString = @"Congratulations! You got a rare!";
            NSLog(@"Rare");
            
        } else {
            //common pack


            packVC.imageName = [NSString stringWithFormat:@"Bad%d", imageNumber];

            packVC.rarityString = @"Just a common card...";
            NSLog(@"Common");
            
            

        }
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
