//
//  CollectionViewTest.m
//  TestSubliminal
//
//  Created by Nico Prananta on 8/16/13.
//  Copyright (c) 2013 Touches. All rights reserved.
//

#import <Subliminal/Subliminal.h>

@interface CollectionViewTest : SLTest

@end

@implementation CollectionViewTest

- (void)setUpTest {
	// Navigate to the part of the app being exercised by the test cases,
	// initialize SLElements common to the test cases, etc.
}

- (void)tearDownTest {
	// Navigate back to "home", if applicable.
}

- (void)testScrollingCase {
    SLElement *label1 = [SLElement elementWithAccessibilityLabel:@"This is cell 0"];
    SLAssertTrue([UIAElement(label1) isVisible], @"Cell 0 should be visible at this point");
    
    SLElement *label5 = [SLElement elementWithAccessibilityLabel:@"This is cell 5"];
    SLAssertFalse([UIAElement(label5) isValid], @"Cell 5 should not be visible at this point");
    
    
}

@end
