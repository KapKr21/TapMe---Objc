//
//  ViewController.h
//  TapMe
//
//  Created by Kapil Khatri on 02/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
    
    int timeInt;
    int tapInt;
    int gameInt;
    
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startGame;


- (IBAction)startButton:(id)sender;

@end

