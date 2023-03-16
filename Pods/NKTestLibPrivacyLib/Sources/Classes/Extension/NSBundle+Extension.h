//
//  NSBundle+Extension.h
//  NKTestLibPrivacyLib
//
//  Created by Van Zhang on 2023/3/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (Extension)
+ (NSBundle*)currentLibraryBundle;
+ (NSBundle*)resourceBundleWith:(NSString*)bundleName;
+ (NSString*)pathWithBundleName:(NSString*)bundle;
@end

NS_ASSUME_NONNULL_END
