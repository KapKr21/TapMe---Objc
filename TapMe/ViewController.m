//
//  ViewController.m
//  TapMe
//
//  Created by Kapil Khatri on 02/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeInt=10;
    tapInt=0;
    gameInt=0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i",tapInt];
    
}


- (IBAction)startButton:(id)sender {
    
    if(timeInt == 10)
    {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        
        self.startGame.enabled = NO;
        self.startGame.alpha = 0.5;
        
    }
    
    if(gameInt == 1)
    {
        tapInt+=1;
        
        self.scoreLabel.text = [NSString stringWithFormat:@"%i",tapInt];
    }
    else
    {
        timeInt = 10;
        tapInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i",tapInt];
        
        [self.startGame setTitle:@"Restart" forState:UIControlStateNormal];
        
    }
    
    
    
}

-(void)updateTimer
{
    timeInt-=1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
    
    gameInt = 1;
    
    self.startGame.enabled = YES;
    self.startGame.alpha = 1.0;
    
    [self.startGame setTitle:@"Tap" forState:UIControlStateNormal];
    
    if(timeInt == 0)
    {
        [timer invalidate];
        
        self.startGame.enabled = NO;
        self.startGame.alpha = 0.5;
        
        [self.startGame setTitle:@"Restart" forState:UIControlStateNormal];
        
        [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(restartGame) userInfo:nil repeats:NO];
        
    }
    
    
}



-(void) restartGame
{
    self.startGame.enabled = YES;
    self.startGame.alpha = 1.0;
    
    gameInt=0;
}

@end

