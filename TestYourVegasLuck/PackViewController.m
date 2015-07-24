//
//  PackViewController.m
//  TestYourVegasLuck
//
//  Created by Roark on 7/23/15.
//  Copyright (c) 2015 Dev Mountain. All rights reserved.
//

#import "PackViewController.h"

@interface PackViewController ()
@property (strong, nonatomic) IBOutlet UILabel *rarityLabel;
@property (strong, nonatomic) IBOutlet UIImageView *playerImage;

@end

@implementation PackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"GrassTexture"]];
    
    UIImage *display = [UIImage imageNamed:self.imageName];
    self.playerImage.image = display;
    self.rarityLabel.text = self.rarityString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
