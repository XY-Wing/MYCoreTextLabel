//
//  ImageViewController.m
//  复杂demo
//
//  Created by 孟遥 on 2017/2/14.
//  Copyright © 2017年 mengyao. All rights reserved.
//

#import "ImageViewController.h"
#import "MYCoreTextLabel.h"

@interface ImageViewController ()

@property (nonatomic, strong) MYCoreTextLabel *coreTextLabel;

@end

@implementation ImageViewController

- (MYCoreTextLabel *)coreTextLabel
{
    if (!_coreTextLabel) {
        _coreTextLabel = [[MYCoreTextLabel alloc]init];
        //创建相关属性的模型
        MYAttributeModel *model = [[MYAttributeModel alloc]init]; //
        model.imageSize = CGSizeMake(25, 25);  // 设置图片尺寸 , 默认和字体一样
        model.textFont  = [UIFont systemFontOfSize:16.f]; //设置普通文本大小 , 默认14.f
        model.textColor = [UIColor brownColor]; //设置普通文本字体颜色 , 默认黑色
        model.lineSpacing = 5;  //设置行间距
        model.wordSpacing = 2;  //设置字间距
        _coreTextLabel.attribute = model;  //赋值模型
        [_coreTextLabel text:@"满街脚步突然静了[调皮],满天柏树[白眼]突然没有动摇,这一刹[擦汗]我只需要一罐热茶吧,那味道似是[滑稽]什么都不紧要,唱片店内[擦汗]传来异国民谣,那种快乐[白眼]突然被我需要,不亲切[调皮]至少不似想你般[龇牙]奥妙,情和调随著怀缅变得萧条,原来过得很快乐[擦汗],[白眼]只我一人未发觉,如能忘掉渴望,[花心]岁月长衣裳薄,无论于什么角落[噘嘴],不假设你或会在旁,我也可畅游异国放心吃喝[调皮][调皮][调皮]" customLinks:nil];
    }
    return _coreTextLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"只展示图片/表情,其他链接不展示";
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    //frame
    CGSize size = [self.coreTextLabel sizeThatFits:CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.coreTextLabel.frame = CGRectMake(0, 100, size.width, size.height);
    [self.view addSubview:self.coreTextLabel];
}




@end
