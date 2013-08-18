//
//  UICollectionViewController+Additions.m
//  TestSubliminal
//
//  Created by Nico Prananta on 8/17/13.
//  Copyright (c) 2013 Touches. All rights reserved.
//

#import "UICollectionViewController+Additions.h"

@implementation UICollectionViewController (Additions)

- (void)scrollToBottom {
    int sections = [self numberOfSectionsInCollectionView:self.collectionView];
    int numberOfItems = [self collectionView:self.collectionView numberOfItemsInSection:sections-1];
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:numberOfItems-1 inSection:sections-1];
    [self.collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionBottom animated:NO];
}

@end
