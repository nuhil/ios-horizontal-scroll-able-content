//
//  HSCViewController.h
//  Horizontal Scrollable Content
//
//  Created by Nuhil Mehdy on 4/23/13.
//  Copyright (c) 2013 Nuhil Mehdy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSCViewController : UIViewController <UIScrollViewDelegate> {
    IBOutlet UIScrollView *scrollView;

    NSMutableArray *items;
    NSArray *imagesName;
}

@end
