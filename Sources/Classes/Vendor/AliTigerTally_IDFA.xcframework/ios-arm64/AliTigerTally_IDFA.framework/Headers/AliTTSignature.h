//
//  AliSignature.h
//  AliTigerTallySdk
//
//  Created by 旬修 on 2022/8/10.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, TTTypeRequest) {
    TTTypeGet=0, TTTypePost,
};

@interface AliTTSignature : NSObject

+ (instancetype)sharedInstance;

- (bool)initialize:(NSString *)appkey;

- (void)setAccount:(NSString *)account;

- (NSString *)vmpSign:(NSData *)input;

- (NSString *)vmpHash:(TTTypeRequest)type input:(NSData *)input;


- (bool)reinitalize;

@end
