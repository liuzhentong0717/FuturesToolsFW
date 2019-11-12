//
//  QHWToolsDetailViewController.m
//  QHW_FuturesPro
//
//  Created by MAC on 2019/8/20.
//  Copyright © 2019 LZT. All rights reserved.
//

#import "BOMFToolsDetailViewController.h"
#import "BOMToolsTableViewCell.h"
#import "BOMToolsModel.h"
#import "BOMToolsFooterView.h"
#import "BOMColorSizeMacros.h"
static NSString *const tableIDCell = @"tableviewCell";
static NSString *one;
static NSString *two;
static NSString *three;
static NSString *four;
static NSString *five;
static NSString *six;
static NSString *seven;
static NSString *eight;
@interface BOMFToolsDetailViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>

// tableView
@property (nonatomic,strong) UITableView *tool;

@property (nonatomic,copy)NSMutableArray *textArray;

@property (nonatomic,strong) BOMToolsFooterView *toolFooterView;
@property (nonatomic,strong)NSString *resultStr;
@property (nonatomic , assign) BOOL doNext;
@end

@implementation BOMFToolsDetailViewController

- (UITableView *)tool
{
    if (!_tool) {
        
        UITableView *tableView =  [[UITableView alloc]initWithFrame:CGRectMake(0, KStatusBarAndNavBarHeight, SCREEN_WIDTH, SCREEN_HEIGHT - KStatusBarAndNavBarHeight) style:UITableViewStylePlain];
         tableView.contentInset = UIEdgeInsetsMake(0, 0, KStatusBarAndNavBarHeight, 0);
        tableView.separatorColor = UIColor.whiteColor;
        tableView.backgroundColor = UIColor.whiteColor;
        tableView.estimatedRowHeight = 0;
        tableView.estimatedSectionFooterHeight = 0;
        tableView.estimatedSectionHeaderHeight = 0;
        tableView.tableFooterView = self.toolFooterView;
        tableView.sectionHeaderHeight = 10;
        [tableView registerNib:[UINib nibWithNibName:NSStringFromClass([BOMToolsTableViewCell class]) bundle:nil] forCellReuseIdentifier:tableIDCell];
        tableView.delegate = self;
        tableView.dataSource = self;
        _tool = tableView;
        
    }
    
    return _tool;
}

- (BOMToolsFooterView *)toolFooterView{
    if (!_toolFooterView) {
            
        _toolFooterView = [[BOMToolsFooterView alloc]init];
        _toolFooterView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 200);
        WeakSelf(self)
        self.toolFooterView.resultLb.text = [NSString stringWithFormat:@"%@:进口成本:__元/吨",self.titlestr];
        _toolFooterView.jsClick = ^{
            [weakself startJS];
        };
    }
    return _toolFooterView;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textArray = [[NSMutableArray alloc]init];
    self.title = self.titlestr;
    [self.view addSubview:self.tool];
    
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.typeArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BOMToolsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIDCell forIndexPath:indexPath];
    // 取消点击效果
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.jsTextfield.placeholder = self.typeArr[indexPath.row];
    cell.jsTextfield.tag = indexPath.row;
    cell.jsTextfield.delegate = self;
    [cell.jsTextfield addTarget:self action:@selector(textChange:) forControlEvents:UIControlEventEditingChanged];
    return cell;
}

-(void)textChange:(UITextField *)textF{
    switch (textF.tag) {
        case 0:
            one = textF.text;
            break;
        case 1:
            two = textF.text;
            break;
        case 2:
            three = textF.text;
            break;
        case 3:
            four = textF.text;
            break;
        case 4:
            five = textF.text;
            break;
        case 5:
            six = textF.text;
            break;
        case 6:
            seven = textF.text;
            break;
        case 7:
            eight = textF.text;
            break;
        default:
            break;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)startJS{
    if ([self.titlestr isEqualToString:@"大豆"]) {
        if (kStringIsEmpty(one)||kStringIsEmpty(two)||kStringIsEmpty(three)||kStringIsEmpty(four)) {
            //KShowTipText(@"请输入完整")
        }else{
            self.toolFooterView.resultLb.text = [NSString stringWithFormat:@"%@:进口成本:%@元/吨",self.titlestr,[BOMToolsModel soybeanONE:one TWO:two THREE:three FOUR:four]];
            
        }
    }
    if ([self.titlestr isEqualToString:@"玉米"]) {
        if (kStringIsEmpty(one)||kStringIsEmpty(two)||kStringIsEmpty(three)||kStringIsEmpty(four)||kStringIsEmpty(five)||kStringIsEmpty(six)) {
            //KShowTipText(@"请输入完整")
        }else{
            self.toolFooterView.resultLb.text = [BOMToolsModel CornONE:one TWO:two THREE:three FOUR:four FIVE:five SIX:six];
        }
    }
    if ([self.titlestr isEqualToString:@"LME"]) {
        if (kStringIsEmpty(one)||kStringIsEmpty(two)||kStringIsEmpty(three)||kStringIsEmpty(four)||kStringIsEmpty(five)||kStringIsEmpty(six)||kStringIsEmpty(seven)) {
           // KShowTipText(@"请输入完整")
        }else{
            self.toolFooterView.resultLb.text = [BOMToolsModel LMECotisonONE:one TWO:two THREE:three FOUR:four FIVE:five SIX:six SEVEN:seven];
        }
    }
    if ([self.titlestr isEqualToString:@"天然橡胶"]) {
        if (kStringIsEmpty(one)||kStringIsEmpty(two)||kStringIsEmpty(three)||kStringIsEmpty(four)||kStringIsEmpty(five)||kStringIsEmpty(six)||kStringIsEmpty(seven)||kStringIsEmpty(eight)) {
            //KShowTipText(@"请输入完整")
        }else{
            self.toolFooterView.resultLb.text = [BOMToolsModel NaturalRubberONE:one TWO:two THREE:three FOUR:four FIVE:five SIX:six SEVEN:seven EIGHT:eight];
        }
    }
    if ([self.titlestr isEqualToString:@"小麦"]) {
        if (kStringIsEmpty(one)||kStringIsEmpty(two)||kStringIsEmpty(three)||kStringIsEmpty(four)||kStringIsEmpty(five)) {
            //KShowTipText(@"请输入完整")
        }else{
            self.toolFooterView.resultLb.text = [BOMToolsModel WheatONE:one TWO:two THREE:three FOUR:four FIVE:five];
        }
    }
    if ([self.titlestr isEqualToString:@"PTA"]) {
        if (kStringIsEmpty(one)||kStringIsEmpty(two)) {
           //KShowTipText(@"请输入完整")
        }else{
            self.toolFooterView.resultLb.text = [BOMToolsModel PTACotisonONE:one TWO:two];
        }
    }
    
    
   
  
}

@end
