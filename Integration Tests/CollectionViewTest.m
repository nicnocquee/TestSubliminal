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
    
    //using http://stackoverflow.com/a/18279448/401544 solution
    
    SLAskApp(scrollToBottom);
    
    SLElement *lastLabel = [SLElement elementWithAccessibilityLabel:@"This is cell 19"];
    SLAssertTrue([UIAElement(lastLabel) isVisible], @"Last cell should be visible at this point");
    
    /*
    // using http://stackoverflow.com/a/18280697/401544
    
    SLElement *lastLabel = [SLElement elementWithAccessibilityLabel:@"This is cell 19"];
    while (!SLWaitUntilTrue([UIAElement(lastLabel) isValidAndVisible], 1.0)) {
        [[SLWindow mainWindow] dragWithStartOffset:CGPointMake(0.5, 0.75) endOffset:CGPointMake(0.5, 0.25)];
    }
     */
}

@end
