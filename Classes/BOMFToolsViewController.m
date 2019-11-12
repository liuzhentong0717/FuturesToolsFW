//
//  QHWToolsViewController.m
//  QHW_FuturesPro
//
//  Created by MAC on 2019/8/20.
//  Copyright © 2019 LZT. All rights reserved.
//

#import "BOMFToolsViewController.h"
#import "BOMToolsCollectionViewCell.h"
#import "BOMToolsModel.h"
#import "BOMFToolsDetailViewController.h"
#import "BOMColorSizeMacros.h"
static NSString *const collectionCell = @"collectionCell";
@interface BOMFToolsViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
// 模型数组
@property (nonatomic,strong) NSArray *imgdataArr;
@property (nonatomic,strong) BOMToolsModel *toolsModel;
@end

@implementation BOMFToolsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"期货成本换算工具";
    self.imgdataArr = @[@"BOMdou",@"BOMyumi",@"BOMjinshu",@"BOMxiangjiao",@"BOMxioamai",@"BOMguzhi"];
    self.toolsModel = [[BOMToolsModel alloc]init];
    [self getCollectionView];
}

- (void)getCollectionView{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    CGFloat leftRightMargin = 10;
    CGFloat width = (SCREEN_WIDTH - leftRightMargin * 3)/2.0;
    CGFloat height = width/2+50;
    layout.sectionInset = UIEdgeInsetsMake(10, leftRightMargin, 10, leftRightMargin);
    layout.itemSize = CGSizeMake(width, height);
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;

    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, KStatusBarAndNavBarHeight, SCREEN_WIDTH, SCREEN_HEIGHT-KStatusBarAndNavBarHeight) collectionViewLayout:layout];
    collectionView.backgroundColor = UIColor.whiteColor;
    
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([BOMToolsCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:collectionCell];
    // collectionView.contentInset = UIEdgeInsetsMake(TCStatusBarAndNavBarHeight, 0, 0, 0);
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [self.view addSubview:collectionView];
}

#pragma mark - collectionView代理
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.toolsModel.titleArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BOMToolsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionCell forIndexPath:indexPath];
    cell.titleLb.text = self.toolsModel.titleArr[indexPath.row];
    
    cell.toolsImgView.image = [UIImage imageNamed:self.imgdataArr[indexPath.row]];

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    BOMFToolsDetailViewController *VC = [BOMFToolsDetailViewController new];
    VC.typeArr = self.toolsModel.styleArray[indexPath.row];
    VC.titlestr = self.toolsModel.titleArr[indexPath.row];
    [self.navigationController pushViewController:VC animated:YES];
}


@end
