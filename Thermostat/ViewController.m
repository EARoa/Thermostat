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
        float fahrenheit = self.temperatureSlider.value;
        float celsius = (fahrenheit - 32) / 1.8;
        
        NSString *valueString = [NSString stringWithFormat:@"%4.2f", celsius];
        self.temperatureLabel.text = valueString;
        
        
//        Color Changes for Celsius
        
        if (celsius >= 32){
//            red
            self.view.backgroundColor=[UIColor colorWithRed:198/255.0 green:40/255.0 blue:40/255.0 alpha:1.0];
            
        } else if(celsius <= -6){
//            blue
            self.view.backgroundColor=[UIColor colorWithRed:0/255.0 green:145/255.0 blue:234/255.0 alpha:1.0];
            
        }
        
        
        
    } else if (_segmentController.selectedSegmentIndex == 1){
        
        NSString *valueString = [NSString stringWithFormat:@"%d",(int) self.temperatureSlider.value];
            self.temperatureLabel.text = valueString;
        
        
//        Color Changes for Fahrenheit
        
        if (self.temperatureSlider.value >= 90){
//            red
            self.view.backgroundColor=[UIColor colorWithRed:198/255.0 green:40/255.0 blue:40/255.0 alpha:1.0];
            
        } else if( self.temperatureSlider.value <= 20){
//           blue
           self.view.backgroundColor=[UIColor colorWithRed:0/255.0 green:145/255.0 blue:234/255.0 alpha:1.0];
            
        }
    
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
