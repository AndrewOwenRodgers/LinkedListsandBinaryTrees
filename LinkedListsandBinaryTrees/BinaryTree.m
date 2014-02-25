//
//  BinaryTree.m
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "BinaryTree.h"

@implementation BinaryTree

-(void)addNodeWithValue:(NSInteger)value
{
	if (self.rootNode == nil)
	{
		self.rootNode = [[BinaryNode alloc] initWithValue:value];
	}
	else
	{
		[self.rootNode addNodeWithValue:value];
	}
}

@end
