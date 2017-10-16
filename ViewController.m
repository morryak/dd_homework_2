//
//  ViewController.m
//  dd_homework_2
//
//  Created by Михаил on 13.10.2017.
//  Copyright © 2017 Михаил. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController
NSDictionary *_attributesBackup;
- (void)viewDidLoad {
    [super viewDidLoad];
     _attributesBackup = [_myDisplay.attributedText attributesAtIndex:0 longestEffectiveRange:nil inRange:NSMakeRange(0, _myDisplay.text.length)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonRed:(id)sender
{

    NSRange selectedRange = _myDisplay.selectedRange;
    
    if (selectedRange.length > 0) {
        NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString:_myDisplay.attributedText];
        [text addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:selectedRange];
        _myDisplay.scrollEnabled = NO;
        _myDisplay.attributedText = text;
        _myDisplay.selectedRange = selectedRange;
        _myDisplay.scrollEnabled = YES;
    }
    }

- (IBAction)buttonGreen:(id)sender
{
    
    NSRange selectedRange = _myDisplay.selectedRange;
    
    if (selectedRange.length > 0) {
        NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString:_myDisplay.attributedText];
        [text addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:selectedRange];
        _myDisplay.scrollEnabled = NO;
        _myDisplay.attributedText = text;
        _myDisplay.selectedRange = selectedRange;
        _myDisplay.scrollEnabled = YES;
    }
}

- (IBAction)buttonBlue:(id)sender
{
    NSRange selectedRange = _myDisplay.selectedRange;
    
    if (selectedRange.length > 0) {
        NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString:_myDisplay.attributedText];
        [text addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:selectedRange];
        _myDisplay.scrollEnabled = NO;
        _myDisplay.attributedText = text;
        _myDisplay.selectedRange = selectedRange;
        _myDisplay.scrollEnabled = YES;
    }
}

- (IBAction)buttonOrange:(id)sender
{
    NSRange selectedRange = _myDisplay.selectedRange;
    
    if (selectedRange.length > 0) {
        NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString:_myDisplay.attributedText];
        [text addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:selectedRange];
        _myDisplay.scrollEnabled = NO;
        _myDisplay.attributedText = text;
        _myDisplay.selectedRange = selectedRange;
        _myDisplay.scrollEnabled = YES;
    }
}

- (IBAction)buttonClear:(id)sender
{
    self.myDisplay.textColor = [UIColor blackColor];
}


@end
