//
//  ViewController.m
//  Thermostat
//
//  Created by Efrain Ayllon on 6/16/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UISlider *temperatureSlider;
@property (nonatomic, weak) IBOutlet UILabel *temperatureLabel;
@property (nonatomic, weak) IBOutlet UISegmentedControl *segmentController;

@end

@implementation ViewController

-(IBAction) temperatureController:(id)sender {
    NSLog(@"%d",(int) self.temperatureSlider.value);
    
    
    if(_segmentController.selectedSegmentIndex == 0 ){
        double iNeedThis = self.temperatureSlider.value;
        
        double uhhIDK = (iNeedThis - 32) / 1.8;
        
        NSString *valueString = [NSString stringWithFormat:@"%.2f", uhhIDK];
        self.temperatureLabel.text = valueString;
        
        
    } else if (_segmentController.selectedSegmentIndex == 1){
        
        NSString *valueString = [NSString stringWithFormat:@"%d",(int) self.temperatureSlider.value];
            self.temperatureLabel.text = valueString;
//        hmm...
    
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
