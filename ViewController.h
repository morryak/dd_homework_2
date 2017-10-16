//
//  ViewController.h
//  dd_homework_2
//
//  Created by Михаил on 13.10.2017.
//  Copyright © 2017 Михаил. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic) NSRange selectedRange;
@property (weak, nonatomic) IBOutlet UITextView *myDisplay;

- (IBAction)buttonRed:(id)sender;
- (IBAction)buttonGreen:(id)sender;
- (IBAction)buttonBlue:(id)sender;
- (IBAction)buttonOrange:(id)sender;
- (IBAction)buttonClear:(id)sender;


@end

