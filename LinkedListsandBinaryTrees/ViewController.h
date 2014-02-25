//
//  ViewController.h
//  LinkedListsandBinaryTrees
//
//  Created by Andrew Rodgers on 2/24/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LinkedList.h"
#import "BinaryTree.h"

@interface ViewController : UIViewController
<UITextFieldDelegate>

@property (strong, nonatomic) LinkedList *list;
@property (strong, nonatomic) BinaryTree *tree;

@property (weak, nonatomic) IBOutlet UITextField *inputValue;
@property (weak, nonatomic) IBOutlet UILabel *searchResultLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *treeOrListController;
@property (weak, nonatomic) IBOutlet UIButton *popButton;

@end
