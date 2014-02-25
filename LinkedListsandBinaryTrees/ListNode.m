//
//  ListNode.m
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

-(id) initWithValue:(NSInteger)value
{
	if (self = [super init])
	{
		self.value = value;
	}
	return self;
}

@end
