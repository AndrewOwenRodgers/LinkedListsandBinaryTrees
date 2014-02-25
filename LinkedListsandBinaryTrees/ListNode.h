//
//  ListNode.h
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

@property (strong, nonatomic) ListNode *nextNode;
@property (nonatomic) NSInteger value;

-(id)initWithValue:(NSInteger)value;

@end