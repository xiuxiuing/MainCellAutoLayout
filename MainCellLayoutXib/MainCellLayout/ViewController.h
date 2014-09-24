//
//  ViewController.h
//  MainCellLayout
//
//  Created by Mac_PC on 14-8-21.
//  Copyright (c) 2014年 H0meDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainCell.h"


@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
