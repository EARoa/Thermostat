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
        
//      Ok so now we need to do the conversion here and we're done alright!
        
        
        
    } else if (_segmentController.selectedSegmentIndex == 1){
        
        NSString *valueString = [NSString stringWithFormat:@"%d",(int) self.temperatureSlider.value];
            self.temperatureLabel.text = valueString;
        
    
    }
    

//    NSString *valueString = [NSString stringWithFormat:@"%d",(int) self.temperatureSlider.value];
//    self.temperatureLabel.text = valueString;
//  
    
    
//    if ([valueString length] == 0) {
//        NSLog(@"ZERO");
//    }
//    else {
//        NSInteger myCelsius, myFahrenheit;
//        myCelsius = myInput.text.integerValue;
//        myFahrenheit = (myCelsius / (5.0/9.0)) + 32;
//        myLabel.text = [NSString stringWithFormat:@"%d", myFahrenheit];
//        
//    }

    
    
//    
//    UISlider *slider = (UISlider *) sender;
//    
//    NSString *title = slider.titleLabel.text;
//    
//    if([title isEqualToString:@"Add"]) {
//        
//        // [_calculator add] // pass in the values
//        
//        // do addition
//    } else if([title isEqualToString:@"Subtract"]) {
//        // do subtraction
//    } else if([title isEqualToString:@"Multiply"]) {
//        // do multiplication
//    }
//    
//    
//    NSLog(@"%@",slider.titleLabel.text);
//    
//    
    
    
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
