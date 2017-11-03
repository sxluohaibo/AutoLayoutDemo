//
//  MSTableViewCell.m
//  MasoryDemo
//
//  Created by 孟辉 on 2017/11/1.
//  Copyright © 2017年 孟辉. All rights reserved.
//

#import "MSTableViewCell.h"
#import "Masonry.h"


@interface CustomView()
@property (nonatomic ,strong) UIImageView * pictrueImageView;
@property (nonatomic ,strong) UILabel * titleLabel;
@property(nonatomic,copy) NSString * titleSSSS;
@end
@implementation CustomView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.pictrueImageView];
        [self.pictrueImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).offset(10);
//            make.left.mas_equalTo(self.contentView.mas_left).offset(10);
            make.left.mas_equalTo(self.mas_left).offset(10);
            //top对top  mas_top //left对应left mas_left可以省略
            make.width.height.mas_equalTo(100);
        }];
        [self addSubview:self.titleLabel];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.pictrueImageView.mas_bottom).offset(10);
            make.left.mas_equalTo(self.pictrueImageView.mas_left).offset(10);
            make.right.mas_equalTo(self).offset(-10);
            make.bottom.mas_equalTo(self).offset(-10);
        }];
    }
    return self;
}

//- (void)setTitleSSSS:(NSString *)titleSSSS{
//    _titleSSSS = titleSSSS;
//    self.titleLabel.text = titleSSSS;
//}
- (void)configView:(NSIndexPath *)indexPath{
    self.titleLabel.text = [NSString stringWithFormat:@"abcdefg--%ld",indexPath.row];
}
- (UIImageView *)pictrueImageView{
    if (!_pictrueImageView) {
        _pictrueImageView = [[UIImageView alloc] init];
        _pictrueImageView.backgroundColor = [UIColor redColor];
    }
    return _pictrueImageView;
}
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = [UIColor yellowColor];
        _titleLabel.numberOfLines = 0;
    }
    return _titleLabel;
}
@end
@interface MSTableViewCell()

@property (nonatomic ,strong) CustomView * bgView;



@end

@implementation MSTableViewCell
- (UIView *)bgView{
    if (!_bgView) {
        _bgView = [[CustomView alloc] init];
        _bgView.backgroundColor = [UIColor blueColor];
    }
    return _bgView;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupView];
    }
    return self;
}
- (void)setupView{
    
    [self.contentView addSubview:self.bgView];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    
  
    
}


//- (void)setTitleSSSS:(NSString *)titleSSSS{
//    _titleSSSS = titleSSSS;
//    self.bgView.titleSSSS = titleSSSS;
//}

- (void)configCell:(NSIndexPath *)indexPath{
    [self.bgView configView:indexPath];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
