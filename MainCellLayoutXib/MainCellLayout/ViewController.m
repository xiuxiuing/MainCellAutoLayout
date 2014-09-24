//
//  ViewController.m
//  MainCellLayout
//
//  Created by Mac_PC on 14-8-21.
//  Copyright (c) 2014年 H0meDev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *_data;
     NSMutableDictionary *_cellCache;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _data = [NSArray arrayWithObjects:@"We've just launched Linkr,a professional SNS.And we are hunting a BD of us for Linkr.Any recommendations,folks?",@"We've just launched Linkr,a professional SNS.And we are hunting a BD of us for Linkr.Any recommendations,folks?We've just launched Linkr,a professional SNS.And we are hunting a BD of us for Linkr.Any recommendations,folks?", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma -mark tableview delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MainCell *cell = [_cellCache objectForKey:@(indexPath.row)];
    if (cell == nil) {
        return [self getCellFromIndexPath:indexPath];
    }
    return cell;
}

- (UITableViewCell *)getCellFromIndexPath:(NSIndexPath*)indexPath
{
    static NSString *CellIndentifier;
   
        CellIndentifier = @"DetailCell";
        MainCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIndentifier];
        if (!cell)
        {
            // cell =[[ UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIndentifier];
            NSArray *nibArray = [[NSBundle mainBundle]loadNibNamed:@"MainCell" owner:nil options:nil];
            cell = [nibArray objectAtIndex:0];
        }
        cell.name.text = @"Anlan";
        cell.date.text = @"14-8-21";
        cell.detail.text = [_data objectAtIndex:indexPath.row];
    [cell setNeedsUpdateConstraints];
        return cell;
    
 }
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    MainCell *cell = (MainCell *)[self getCellFromIndexPath:indexPath];
  [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    [cell.contentView setNeedsLayout];
    [cell.contentView layoutIfNeeded];
    CGFloat height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    NSLog(@"%f",height);
    return height;
}

@end
