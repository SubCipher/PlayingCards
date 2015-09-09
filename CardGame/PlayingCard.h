//
//  PlayingCard.h
//  CardGame
//
//  Created by MacMan on 8/5/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Card.h"


@interface PlayingCard : Card
+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@property (strong, nonatomic)NSString *suit;
@property (nonatomic) NSUInteger rank;


@end
