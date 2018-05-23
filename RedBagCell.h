//
//  RedBagCell.h
//  red
//
//  Created by guojz on 2018/5/17.
//  Copyright © 2018年 admin_gjz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RedBagCell : UITableViewCell
@property (nonatomic, strong) UIImageView        *headImage;
@property (nonatomic, strong) UIImageView        *redBagView;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
