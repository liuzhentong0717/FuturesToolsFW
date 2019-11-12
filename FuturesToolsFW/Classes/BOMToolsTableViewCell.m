//
//  QHWToolsTableViewCell.m
//  QHW_FuturesPro
//
//  Created by MAC on 2019/8/20.
//  Copyright © 2019 LZT. All rights reserved.
//

#import "BOMToolsTableViewCell.h"
@implementation BOMToolsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    self.jsTextfield.lineColor = UIColor.lightGrayColor;
//    self.jsTextfield.placeHolderColor = UIColor.lightGrayColor;
//    self.jsTextfield.selectedLineColor = UIColor.redColor;
//    self.jsTextfield.selectedPlaceHolderColor = UIColor.lightGrayColor;
    self.jsTextfield.tintColor = UIColor.redColor;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
