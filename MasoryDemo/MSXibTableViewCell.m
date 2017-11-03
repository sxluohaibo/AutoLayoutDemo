//
//  MSXibTableViewCell.m
//  MasoryDemo
//
//  Created by 孟辉 on 2017/11/1.
//  Copyright © 2017年 孟辉. All rights reserved.
//

#import "MSXibTableViewCell.h"
#import "Masonry.h"
@interface MSXibTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
@implementation MSXibTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self setupView];
}
- (void)setupView{
    [self.contentView addSubview:self.pictureImageView];
    [self.pictureImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView.mas_top).offset(10);
        //make.left.mas_equalTo(self.contentView.mas_left).offset(10);
        make.left.mas_equalTo(self.contentView).offset(10);
        //top对top  mas_top //left对应left mas_left可以省略
        make.width.height.mas_equalTo(100);
    }];
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.pictureImageView.mas_bottom).offset(10);
        make.left.mas_equalTo(self.contentView).offset(10);
        make.right.mas_equalTo(self.contentView).offset(-10);
        make.bottom.mas_equalTo(self.contentView).offset(-10);
    }];
}
- (void)configCell:(NSIndexPath *)indexPath{
    self.titleLabel.text = [NSString stringWithFormat:@"abcdefg--%ld",indexPath.row];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
