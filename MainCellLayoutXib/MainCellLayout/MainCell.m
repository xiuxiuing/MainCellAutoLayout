//
//  MainCell.m
//  messagebox
//
//  Created by duyongchao on 14-7-24.
//  Copyright (c) 2014年 duyongchao. All rights reserved.
//

#import "MainCell.h"

@implementation MainCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)awakeFromNib
{
    sepView.backgroundColor = [UIColor blueColor];
  //  [self applyConstraints];
}
/*
- (void)setIntroductionText:(NSString*)text MaxLines:(NSInteger) numberOfLines
{
    CGRect frame = [self frame];
    self.detail.text = text;
    self.detail.numberOfLines = numberOfLines;
    [self.detail layoutIfNeeded];
    frame.size.height=self.detail.frame.size.height+45;
    
    self.frame = frame;
}*/

- (void)applyConstraints{
   
    [self removeConstraints:self.constraints];
    NSDictionary *viewDicts;
    NSArray *constraints;
 //   self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    viewDicts = NSDictionaryOfVariableBindings(sepView,_name,_date,_detail,_view);
   constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[sepView]-10-[_name]" options:0 metrics:nil views:viewDicts];
    [self.contentView addConstraints:constraints];
    
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_date]-20-|" options:0 metrics:nil views:viewDicts];
    [self.contentView addConstraints:constraints];
    
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[_detail]-20-|" options:0 metrics:nil views:viewDicts];
    [self.contentView addConstraints:constraints];
    
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_view]-0-|" options:0 metrics:nil views:viewDicts];
    [self.contentView addConstraints:constraints];
    
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[_name]-10-[_detail]" options:0 metrics:nil views:viewDicts];
    [self.contentView addConstraints:constraints];
    
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_detail]-10-[_view]-1-|" options:0 metrics:nil views:viewDicts];
    [self.contentView addConstraints:constraints];
}

@end
