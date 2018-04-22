//
//  ViewController.m
//  BillSplitter
//
//  Created by Brian Vo on 2018-04-21.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *totalBillField;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *splitAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)calculateSplitAmount:(id)sender {
    CGFloat amount =  [self.totalBillField.text integerValue];
    NSInteger quantity =  self.numberOfPeopleSlider.value;
    self.splitAmountLabel.text = [NSString stringWithFormat:@"$%.2f Each", amount / quantity];
    
}
- (IBAction)showSliderValue:(UISlider *)sender {
    NSInteger quantity =  sender.value;
    self.sliderLabel.text = [NSString stringWithFormat:@"Number of people: %ld", quantity];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
