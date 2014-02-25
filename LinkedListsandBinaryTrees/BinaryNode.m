//
//  BinaryNode.m
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "BinaryNode.h"

@implementation BinaryNode

-(id)initWithValue:(NSInteger)value
{
	if (self = [super init])
	{
		self.value = value;
	}
	return self;
}

-(void)addNodeWithValue:(NSInteger)value
{
	if (value > self.value)
	{
		if (self.greaterNode == nil)
		{
			self.greaterNode = [[BinaryNode alloc] initWithValue:value];
		}
		else
		{
			[self.greaterNode addNodeWithValue:value];
		}
	}
	else if (value < self.value)
	{
		if (self.lesserNode == nil)
		{
			self.lesserNode = [[BinaryNode alloc] initWithValue:value];
		}
		else
		{
			[self.lesserNode addNodeWithValue:value];
		}
	}
	//And, lastly, if value == self.value it does nothing.
}

-(BOOL)searchForNodeWithValue:(NSInteger)value
{
	if (self.value == value)
	{
		return YES;
	}
	else if (value < self.value)
	{
		return [self.lesserNode searchForNodeWithValue:value];
	}
	else if (value > self.value)
	{
		return [self.greaterNode searchForNodeWithValue:value];
	}
	return NO;
}

@end
