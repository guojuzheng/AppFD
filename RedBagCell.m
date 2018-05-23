//
//  RedBagCell.m
//  red
//
//  Created by guojz on 2018/5/17.
//  Copyright © 2018年 admin_gjz. All rights reserved.
//

#import "RedBagCell.h"

@implementation RedBagCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"cellID";
    RedBagCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[RedBagCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.headImage = [UIImageView new];
        self.headImage.image = [UIImage imageNamed:@"avatar@2x"];
        self.headImage.frame = CGRectMake(0, 0, 40, 40);
        [self.contentView addSubview:self.headImage];
        self.redBagView = [UIImageView new];
        self.redBagView.image = [UIImage imageNamed:@"IMG_4166.jpg"];
        self.redBagView.frame = CGRectMake(50, 0, [UIScreen mainScreen].bounds.size.width/2, 65);
        [self.contentView addSubview:self.redBagView];
    }
    return self;
}

@end
