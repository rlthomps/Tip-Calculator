//
//  TipViewController.m
//  Tip Calculator
//
//  Created by Robert Thompson on 6/16/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;
@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipTotalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UIImageView *tipImage;



- (IBAction)onTap:(id)sender;
- (void)updateValues;


@end

@implementation TipViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Tip Calculator" ;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateValues];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];

}

- (void)updateValues {
    float billAmount = [self.billTextField.text floatValue];
    NSArray *tipValues = @[@(0.1), @(0.15), @(0.2)];
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    float totalAmount = tipAmount + billAmount;
    float backgroundAmount = [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%0.2f", tipAmount];
    self.tipTotalLabel.text = [NSString stringWithFormat:@"$%0.2f", totalAmount];
    
    if (backgroundAmount < 0.11) {
   
  
UIImage *image = [UIImage imageNamed: @"01.jpg"];
        
  [_tipImage setImage:image];
        
// UIImageView *tipImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"01.jpg"]];
    

        //backgroundView.contentMode = UIViewContentModeScaleAspectFit;
        _tipImage.alpha = 0.5;
   // [self.view addSubview:tipImage];
       // backgroundView.layer.zPosition = -10;
        [UIImageView animateWithDuration:.750 animations:^{_tipImage.alpha = 1.0;}];

    }
    
    else if (backgroundAmount > .19) {
        UIImage *image = [UIImage imageNamed: @"03.jpg"];
        
        [_tipImage setImage:image];
        
        // UIImageView *tipImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"01.jpg"]];
        
        
        //backgroundView.contentMode = UIViewContentModeScaleAspectFit;
        _tipImage.alpha = 0.5;
        // [self.view addSubview:tipImage];
        // backgroundView.layer.zPosition = -10;
        [UIImageView animateWithDuration:.750 animations:^{_tipImage.alpha = 1.0;}];
    
    }  else {
        UIImage *image = [UIImage imageNamed: @"02.jpg"];
        
        [_tipImage setImage:image];
        
        // UIImageView *tipImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"01.jpg"]];
        
        
        //backgroundView.contentMode = UIViewContentModeScaleAspectFit;
        _tipImage.alpha = 0.5;
        // [self.view addSubview:tipImage];
        // backgroundView.layer.zPosition = -10;
        [UIImageView animateWithDuration:.750 animations:^{_tipImage.alpha = 1.0;}];
        
    }
    

}
@end
