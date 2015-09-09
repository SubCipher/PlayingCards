//
//  Card.h
//  CardGame
//
//  Created by MacMan on 8/5/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

//ios now uses @import vs #import
#import <Foundation/Foundation.h>

//class declaration with reference to super class
//class name should always match file name
@interface Card : NSObject

//all object are created on the heap
//memory is managed by "strong" and "weak" key name

//@property = memory allocation per instance of class
//strong = keep memory for the thing this points to in the heap as long as i or anyone else has a strong pointer to it [ reference counting ] if NO pointers exist the space is reclaimed immediately

//weak = keep memeory for the thing this points to as long as someone has a pointer to it; if no pointer exist reclaim memeory and set pointer to nil;

//nonatomic = creates the setter and getter;

@property (strong, nonatomic) NSString *contents;

//primitive types are not stored in heap so their is no memory to manage ; no strong or weak

@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

-(int)match:(NSArray *)otherCards;


@end
