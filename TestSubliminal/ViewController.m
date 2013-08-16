//
//  ViewController.m
//  TestSubliminal
//
//  Created by Nico Prananta on 8/16/13.
//  Copyright (c) 2013 Touches. All rights reserved.
//

#import "ViewController.h"

@interface MyCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *myLabel;

@end

@implementation MyCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _myLabel = [[UILabel alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:self.myLabel];
    }
    return self;
}




@end

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    [flowLayout setItemSize:CGSizeMake(CGRectGetWidth(self.collectionView.frame), 100)];
    [self.collectionView registerClass:[MyCell class] forCellWithReuseIdentifier:@"myCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    [cell.myLabel setText:[NSString stringWithFormat:@"This is cell %d", indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"This is an alert for item %d", indexPath.item] delegate:nil cancelButtonTitle:@"Close" otherButtonTitles: nil];
    [alert show];
}

@end
