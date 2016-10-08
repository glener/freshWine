//
//  NewsTableViewController.m
//  美酒生活
//
//  Created by again on 2016/9/27.
//  Copyright © 2016年 again. All rights reserved.
//
#define AGImageCount 4

#import "NewsTableViewController.h"
#import "NewHeaderView.h"

@interface NewsTableViewController ()<UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>
@property (strong,nonatomic) UIPageControl *pageControl;
@property (strong,nonatomic) NSTimer *timer;
@property (strong,nonatomic) NewHeaderView *headerView;
@end

@implementation NewsTableViewController

- (NewHeaderView *)headerView
{
    if (_headerView == nil) {
        _headerView = [[NewHeaderView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    }
    return _headerView;
}

- (UIPageControl *)pageControl
{
    if (_pageControl == nil) {
        _pageControl = [[UIPageControl alloc] init];
        _pageControl.frame = CGRectMake(self.view.frame.size.width / 2 - 25, self.headerView.frame.size.height - 20, 50, 10);
    }
    return _pageControl;
}

- (void)viewDidLoad {
    
    

    [super viewDidLoad];
    self.title = @"资讯";
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.headerView.scrollView.delegate = self;
    
    self.pageControl.numberOfPages = AGImageCount;
    
    [self.headerView addSubview:self.pageControl];
    self.tableView.tableHeaderView = self.headerView;
    [self addTimer];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *ID = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    
    cell.imageView.image = [UIImage imageNamed:@"dimple-user-bg.jpg"];
    cell.textLabel.text = @"1111";
    cell.detailTextLabel.text = @"ald;akjf";
    
    return cell;
}

#pragma mark - timer
- (void)addTimer
{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}
- (void)removeTimer{
    [self.timer invalidate];
    self.timer = nil;
}

- (void)nextImage
{
    int page = 0;
    if (self.pageControl.currentPage == AGImageCount - 1) {
        page = 0;
    } else {
        page = self.pageControl.currentPage + 1;
    }
    
    CGFloat offsetX = page * self.headerView.frame.size.width;
    CGPoint offset = CGPointMake(offsetX, 0);
    [self.headerView.scrollView setContentOffset:offset animated:YES];
}

#pragma mark - 滚动代理方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat scrollW = self.headerView.frame.size.width;
    int page = (self.headerView.scrollView.contentOffset.x + scrollW * 0.5) / scrollW;
    self.pageControl.currentPage = page;
}
//开始拖拽时调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self removeTimer];
}
//停止拖拽时调用
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self addTimer];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
