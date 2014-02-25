//
//  BinaryTree.h
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryNode.h"

@interface BinaryTree : NSObject

@property (strong, nonatomic) BinaryNode *rootNode;

-(void)addNodeWithValue:(NSInteger)value;

@end
