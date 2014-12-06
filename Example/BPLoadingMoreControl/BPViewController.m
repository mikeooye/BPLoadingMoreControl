//
//  BPViewController.m
//  BPLoadingMoreControl
//
//  Created by LiHaozhen on 12/06/2014.
//  Copyright (c) 2014 LiHaozhen. All rights reserved.
//

#import "BPViewController.h"
#import <BPLoadingMoreControl/BPLoadingMoreControl.h>


@interface BPViewController ()<UITableViewDataSource, UITableViewDelegate>{
    
    __weak IBOutlet UITableView *_tableView;
    BPLoadingMoreControl *_loadingMoreControl;
}

@end

@implementation BPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    _loadingMoreControl = [[BPLoadingMoreControl alloc] init];
    _loadingMoreControl.text = @"正在加载..";
    _loadingMoreControl.color = [UIColor redColor];
    [_loadingMoreControl addTarget:self action:@selector(didLoadingMore:) forControlEvents:UIControlEventValueChanged];
    [_tableView addSubview:_loadingMoreControl];
    
    //如果有更多数据需要加载，设置.hasMore = YES，否则设置为NO
    _loadingMoreControl.hasMore = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - LoadingMore
- (void)didLoadingMore:(BPLoadingMoreControl *)control
{
    NSLog(@"did loading more.");
}

#pragma mark - TableDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - TableDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = indexPath.description;
    return cell;
}
@end
