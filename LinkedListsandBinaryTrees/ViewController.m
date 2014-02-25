//
//  ViewController.m
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.inputValue.delegate = self;
	self.list = [[LinkedList alloc] init];
	self.tree = [[BinaryTree alloc] init];
	[self.treeOrListController addTarget:self
								  action:@selector(changePopButton)
						forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addNode:(id)sender
{
	if (self.treeOrListController.selectedSegmentIndex == 0)
	{
		[self.list addNodeToFrontWithValue:[self.inputValue.text integerValue]];
	}
	if (self.treeOrListController.selectedSegmentIndex == 1)
	{
		[self.tree addNodeWithValue:[self.inputValue.text integerValue]];
	}
}

-(IBAction)popNode:(id)sender
{
	if (self.treeOrListController.selectedSegmentIndex == 0)
	{
		[self.list popFrontNode];
	}
	
	if (self.treeOrListController.selectedSegmentIndex == 1)
	{
		BOOL nodeExists = [self.tree.rootNode searchForNodeWithValue:[self.inputValue.text integerValue]];
		if (nodeExists)
		{
			self.searchResultLabel.text = @"Found it!";
		}
		else
		{
			self.searchResultLabel.text = @"Nope. Try again.";
		}
	}
}

-(void)changePopButton
{
	if (self.treeOrListController.selectedSegmentIndex == 0)
	{
		self.popButton.titleLabel.text = @"Pop Node";
	}
	else if (self.treeOrListController.selectedSegmentIndex == 1)
	{
		self.popButton.titleLabel.text = @"Search";
	}
}

@end
