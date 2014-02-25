//
//  LinkedList.h
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@interface LinkedList : NSObject

@property (strong, nonatomic) ListNode *firstNode;
@property (strong, nonatomic) ListNode *secondToFrontNode;

-(void)popFrontNode;
-(void)addNodeToFrontWithValue:(NSInteger)value;

@end
