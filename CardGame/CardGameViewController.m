//
//  CardGameViewController.m
//  CardGame
//
//  Created by MacMan on 8/27/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "CardGameViewController.h"
//import the the Deck.h and PlayingCard.h header files

#import "Deck.h"
#import "PlayingCardDeck.h"



@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic)int flipCount;
//add a deck property
@property (nonatomic,strong)Deck *deck;

@end

@implementation CardGameViewController

//initialize deck using lazy init
-(Deck *) deck
{
    if(!_deck) _deck = [self createDeck];
    return _deck;
    
}
//create instance of playing card deck
-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
    
}



- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]){
        
    [sender setBackgroundImage:[UIImage imageNamed:@"subzeroCardBack"]
                    forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];

        
    }else
    {
        Card *card = [self.deck drawRandomCard];
    [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                      forState:UIControlStateNormal];
    //[sender setTitle:@"A♣️" forState:UIControlStateNormal];
  [sender setTitle: card.contents  forState:UIControlStateNormal];

        
        }
    self.flipCount++;
    
}-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
    
}















@end
