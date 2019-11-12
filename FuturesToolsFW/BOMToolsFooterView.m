//
//  QHWToolsFooterView.m
//  QHW_FuturesPro
//
//  Created by MAC on 2019/8/20.
//  Copyright © 2019 LZT. All rights reserved.
//

#import "BOMToolsFooterView.h"

@implementation BOMToolsFooterView

- (instancetype)init {

    if (self = [super init]) {
        
       self = [[[NSBundle mainBundle] loadNibNamed:@"BOMToolsFooterView" owner:self options:nil] lastObject];
    }
    
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    self.jsBtn.layer.cornerRadius  = 20;
    self.jsBtn.layer.masksToBounds = YES;
    
    self.jsBtn.backgroundColor = UIColor.redColor;
    
//    self.resultLb.layer.borderWidth = 1.0;
//    self.resultLb.layer.borderColor = UIColor.darkGrayColor.CGColor;
//    self.resultLb.layer.cornerRadius = 5;
//    self.resultLb.layer.masksToBounds = YES;
}

- (IBAction)jsBtnClick:(UIButton *)sender {
    if (_jsClick) {
        _jsClick();
    }
}

@end
