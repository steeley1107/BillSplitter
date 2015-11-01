//
//  ViewController.m
//  BillSplitter
//
//  Created by Steele on 2015-10-31.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountLabel;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *dividedAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberOfPeopleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.numberOfPeopleLabel.text = [NSString stringWithFormat:@"Split between %0.0f people",self.numberOfPeopleSlider.value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateSplitAmount:(id)sender {
//    NSCoder 
//    NSNumberFormatter *fmt = [[NSNumberFormatter alloc] initWithCoder:(nonnull NSCoder *)]; internationalCurrencySymbol];
//    //[fmt setAlwaysShowsDecimalSeparator:NO];
//    //[fmt setFormattingContext:(NSFormattingContext) setFormat:@"#,##0.###"];
//    
//    NSDecimalNumber *splitValue = [[NSNumber alloc] init];
//    
//    splitValue = [[NSDecimalNumber decimalNumberWithString: self.billAmountLabel.text] decimalNumberByDividingBy:[NSNumber numberWithInt:self.numberOfPeopleSlider.value]];
//    
//    NSLog(@"%@",[fmt stringFromNumber:splitValue]);
//       
//
    [self.billAmountLabel resignFirstResponder];
    
    float splitBillAmount = [self.billAmountLabel.text floatValue] / self.numberOfPeopleSlider.value;
    
    self.dividedAmountLabel.text = [NSString stringWithFormat:@"Eash person pays $%0.2f",splitBillAmount];
    
}
- (IBAction)splitSlider:(id)sender {

    self.numberOfPeopleSlider.value = roundl(self.numberOfPeopleSlider.value);
    self.numberOfPeopleLabel.text = [NSString stringWithFormat:@"Split between %0.0f people",self.numberOfPeopleSlider.value];
}

@end
