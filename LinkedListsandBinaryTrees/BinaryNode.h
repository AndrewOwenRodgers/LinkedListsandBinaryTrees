//
//  BinaryNode.h
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryNode : NSObject

@property (strong, nonatomic) BinaryNode *greaterNode;
@property (strong, nonatomic) BinaryNode *lesserNode;
@property (nonatomic) NSInteger value;

-(id)initWithValue:(NSInteger)value;
-(void)addNodeWithValue:(NSInteger)value;
-(BOOL)searchForNodeWithValue:(NSInteger)value;

@end
