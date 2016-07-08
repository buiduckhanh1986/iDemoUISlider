//
//  ViewController.m
//  DemoUISlider
//
//  Created by Bui Duc Khanh on 7/4/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController
{
    NSTimer* timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    
    _slider.transform = CGAffineTransformMakeRotation(-M_PI_2);
    _slider.tintColor = [UIColor redColor];
    _slider.thumbTintColor = [UIColor yellowColor];
}


- (void) onTimer{
    if (self.slider.value <= 0.95)
        self.slider.value += 0.05;
    else
    {
        self.slider.value = 1;
        
        [timer invalidate];
    }
    
}
@end
