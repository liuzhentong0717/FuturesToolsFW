//
//  QHWToolsFooterView.h
//  QHW_FuturesPro
//
//  Created by MAC on 2019/8/20.
//  Copyright © 2019 LZT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BOMToolsFooterView : UIView
@property (weak, nonatomic) IBOutlet UIButton *jsBtn;
@property (weak, nonatomic) IBOutlet UILabel *resultLb;
@property (nonatomic,copy)void (^jsClick)(void);

@end

NS_ASSUME_NONNULL_END
