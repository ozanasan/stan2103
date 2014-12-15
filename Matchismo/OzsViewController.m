//
//  OzsViewController.m
//  Matchismo
//
//  Created by Ozan Asan on 15/12/14.
//  Copyright (c) 2014 OzanAsan. All rights reserved.
//

#import "OzsViewController.h"
#import "Deck.h"

@interface OzsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation OzsViewController

-(Deck *)Deck
{
    if(!_deck)
    {
        _deck = [[Deck alloc] init];
    }
    return _deck;
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
