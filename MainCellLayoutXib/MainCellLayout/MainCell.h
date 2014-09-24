//
//  MainCell.h
//  messagebox
//
//  Created by duyongchao on 14-7-24.
//  Copyright (c) 2014年 duyongchao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainCell : UITableViewCell
{
    IBOutlet UIView *sepView;
}
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *detail;
@property (weak, nonatomic) IBOutlet UIView *view;

//-(void)setIntroductionText:(NSString*)text MaxLines:(NSInteger) numberOfLines;

@end
