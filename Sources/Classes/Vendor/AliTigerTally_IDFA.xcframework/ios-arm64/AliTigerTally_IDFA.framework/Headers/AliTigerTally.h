//
//  AliTigerTally.h
//  AliTigerTallySdk
//
//  Created by fcj on 2020/12/24.
//

#import <UIKit/UIKit.h>
#if __has_include(<AliTigerTally_NOIDFA/AliTigerTally.h>)
    #import <AliTigerTally_NOIDFA/TTCaptcha.h>
    #import <AliTigerTally_NOIDFA/AliTTSignature.h>
#elif __has_include(<AliTigerTally_IDFA/AliTigerTally.h>)
    #import <AliTigerTally_IDFA/TTCaptcha.h>
    #import <AliTigerTally_IDFA/AliTTSignature.h>
#else
    #import "AliTTCaptcha.h"
    #import "AliTTSignature.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface AliTigerTally : NSObject

#pragma mark 单例模式
/**
 * 获取单例
 *
 * @return 单例
 */
+ (instancetype)sharedInstance;


#pragma mark 数据签名
/**
 * SDK 初始化
 *
 * @param appkey    秘钥
 * @return 是否初始化成功
 */
- (bool)initialize:(NSString *)appkey;

/**
 * 设置用户账户
 *
 * @param account   账户信息
 */
- (void)setAccount:(NSString *)account;


/**
 * 数据签名
 * @param input 签名数据
 * @return wtoken
 */
- (NSString *)vmpSign:(NSData *)input;


/**
 * 自定义签名数据 hash
 * @param type  数据类型
 * @param input 签名数据
 * @return whash
 */
- (NSString *)vmpHash:(TTTypeRequest)type input:(NSData *)input;


#pragma mark 二次校验
/**
 * 是否进行二次校验
 *
 * @param cookie  response cokie
 * @param body    response body
 * @return 0:通过 1:二次校验
 */
- (int)cptCheck:(NSString *)cookie body:(NSString *)body;


/**
 * 显示滑块验证
 *
 * @param view      父组件
 * @param option    参数
 * @param detegate  回调协议
 */
- (TTCaptcha *)cptCreate:(UIView *)view option:(TTOption *)option delegate:(id<TTDelegate>)detegate;

@end

NS_ASSUME_NONNULL_END
