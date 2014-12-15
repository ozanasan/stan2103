//
//  PlayingCard.h
//  Matchismo
//
//  Created by Ozan Asan on 15/12/14.
//  Copyright (c) 2014 OzanAsan. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
