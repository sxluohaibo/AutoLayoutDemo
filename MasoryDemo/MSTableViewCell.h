//
//  MSTableViewCell.h
//  MasoryDemo
//
//  Created by 孟辉 on 2017/11/1.
//  Copyright © 2017年 孟辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView :UIView

@end

@interface MSTableViewCell : UITableViewCell
- (void)configCell:(NSIndexPath *)indexPath;

@property(nonatomic,copy) NSString * titleSSSS;
@end
