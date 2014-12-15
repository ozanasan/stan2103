//
//  Deck.h
//  Matchismo
//
//  Created by Ozan Asan on 15/12/14.
//  Copyright (c) 2014 OzanAsan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
