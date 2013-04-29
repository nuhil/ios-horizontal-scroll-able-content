//
//  HSCViewController.m
//  Horizontal Scrollable Content
//
//  Created by Nuhil Mehdy on 4/23/13.
//  Copyright (c) 2013 Nuhil Mehdy. All rights reserved.
//

#import "HSCViewController.h"
#import "ItemView.h"

@interface HSCViewController ()

@end

@implementation HSCViewController

- (void)viewDidLoad
{
    imagesName = [[NSArray alloc]initWithObjects:@"one.jpeg", @"two.jpeg", @"three.jpeg", @"four.jpeg", @"five.jpeg", nil];
    items = [[NSMutableArray alloc]init];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
	scrollView.delegate = self;
	scrollView.scrollEnabled = YES;
	int scrollWidth = 170;
	scrollView.contentSize = CGSizeMake(scrollWidth,130);
    
	
	int xOffset = 0;
	
	for(int index=0; index < [imagesName count]; index++)
	{

        NSArray *itemViewNib = [[NSBundle mainBundle] loadNibNamed:@"ItemView" owner:self options:nil];
        ItemView *itemView = (ItemView *) [itemViewNib objectAtIndex:0];
        
        itemView.frame = CGRectMake(10+xOffset, 0, 170, 130);
        itemView.itemImage.image = [UIImage imageNamed:[imagesName objectAtIndex:index]];
        
		[items insertObject:itemView atIndex:index];
		scrollView.contentSize = CGSizeMake(scrollWidth+xOffset,130);
        
		[scrollView addSubview:[items objectAtIndex:index]];
		
		xOffset += 180;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
