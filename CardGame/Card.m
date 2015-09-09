//
//  Card.m
//  CardGame
//
//  Created by MacMan on 8/5/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//
//needs to know whats going on in the header file so you need to import it
#import "Card.h"


//private declarations for class properties
@interface Card()


@end

//class reference for implementations
@implementation Card

-(int)match:(NSArray *)otherCards

{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
            
        }
    }
    return score;

}

@end
