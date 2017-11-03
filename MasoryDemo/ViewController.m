//
//  ViewController.m
//  MasoryDemo
//
//  Created by 孟辉 on 2017/11/1.
//  Copyright © 2017年 孟辉. All rights reserved.
//

#import "ViewController.h"
#import "MSTableViewCell.h"
#import "MSXibTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
}



- (UITableView *)tableView{
    if (!_tableView) {
            _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
            _tableView.delegate = self;
            _tableView.rowHeight = UITableViewAutomaticDimension;
            _tableView.estimatedRowHeight = 500;
            _tableView.dataSource = self;
            _tableView.tableFooterView = [[UIView alloc] init];
            [_tableView registerClass:[MSTableViewCell class] forCellReuseIdentifier:@"MSTableViewCell"];
            [_tableView registerNib:[UINib nibWithNibName:@"MSXibTableViewCell" bundle:nil] forCellReuseIdentifier:@"MSXibTableViewCell"];
        
    }
    return _tableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //纯代码
   
    MSTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MSTableViewCell" forIndexPath:indexPath];
//    cell.titleSSSS = [NSString stringWithFormat:@"xadadajsdjlkasdjlkasjdasdjalskdjklasdjklasdjklasdasdhasjkdhajsdjasdhasdhasjkdhja%ld",(long)indexPath.row];
    [cell configCell:indexPath];
    return  cell;
    
    
//    xib
//    MSXibTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MSXibTableViewCell" forIndexPath:indexPath];
//    [cell configCell:indexPath];
//    return  cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
