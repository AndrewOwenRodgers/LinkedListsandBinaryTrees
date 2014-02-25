//
//  LinkedList.m
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(void)popFrontNode
{
	self.secondToFrontNode.nextNode = nil;
	ListNode *tempNode = self.firstNode;
	while (tempNode.nextNode.nextNode != nil)
	{
		tempNode = tempNode.nextNode;
	}
	if (tempNode.nextNode != nil)
	{
		self.secondToFrontNode = tempNode;
	}
}

-(void)addNodeToFrontWithValue:(NSInteger)value;
{
	if (self.firstNode == nil)
	{
		self.firstNode = [[ListNode alloc] initWithValue:value];
	}
	else if (self.firstNode.nextNode == nil)
	{
		self.firstNode.nextNode = [[ListNode alloc] initWithValue:value];
		self.secondToFrontNode = self.firstNode;
	}
	else
	{
		self.secondToFrontNode.nextNode.nextNode = [[ListNode alloc] initWithValue:value];
		self.secondToFrontNode = self.secondToFrontNode.nextNode;
	}
}

@end
