//
//  AliTTCaptcha.h
//  AliTigerTallySdk
//
//  Created by 旬修 on 2022/8/10.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class TTCaptcha;

#pragma mark 滑块回调协议
@protocol TTDelegate <NSObject>
@required
// 滑块验证成功
- (void)success:(TTCaptcha *)captcha data:(NSString *)data;
// 滑块验证失败
- (void)failed:(TTCaptcha *)captcha code:(NSString *)code;
// 滑块验证异常
- (void)error:(TTCaptcha *)captcha code:(NSInteger)code message:(NSString *)message;
@end


#pragma mark 滑块参数
@interface TTOption: NSObject
// 点击取消
@property (nonatomic,assign) BOOL cancelable;

// 隐藏滑块错误码
@property (nonatomic,assign) BOOL hideError;

// 自定义页面
@property (nonatomic, strong) NSString *customUri;

// 语言
@property (nonatomic, strong) NSString *language;

// 二次校验请求 trace
@property (nonatomic, strong) NSString *traceId;

// 滑块标题文案
@property (nonatomic, strong) NSString *titleText;

// 滑块描述文案
@property (nonatomic, strong) NSString *descText;

// 滑块颜色
@property (nonatomic, strong) NSString *slideColor;

@end


#pragma mark 滑块对象
@interface TTCaptcha : NSObject

- (instancetype)init:(UIView *)view option:(TTOption *)option delegate:(id<TTDelegate>)delegate;

- (void)show;

- (void)dismiss;

@end

NS_ASSUME_NONNULL_END
