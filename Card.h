//
//  Card.h
//  Matchismo
//
//  Created by Ozan Asan on 15/12/14.
//  Copyright (c) 2014 OzanAsan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
