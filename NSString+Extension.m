//
//  NSString+Extension.m
//  NKTestLibPrivacyLib
//
//  Created by Van Zhang on 2023/3/16.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

static NSBundle *resourceBundle = nil;
static dispatch_once_t onceToken;

+ (NSBundle*)currentLibraryBundle{
    dispatch_once(&onceToken, ^{
        resourceBundle = [self resourceBundleWith:@"NKTestLibPrivacyLibResources"];
    });
    return resourceBundle;
}

+ (NSString *)pathWithBundleName:(NSString *)bundle{
    NSString *bundleName = [self checkBundleNamePathExtension:bundle];
    NSString *bundlePath = nil;
    for (bundle in [NSBundle allBundles]) {
        if ([[(NSBundle*)bundle bundlePath].lastPathComponent isEqualToString:bundleName]){
            bundlePath = [(NSBundle*)bundle bundlePath];
            break;
        }
    }
    return bundlePath;
}

+ (NSBundle*)resourceBundleWith:(NSString*)bundleName{
    return [NSBundle bundleWithPath:[self pathWithBundleName:bundleName]];
}

+ (NSString*)checkBundleNamePathExtension:(NSString*)bundleName{
    NSString *bundlePathExtension = @"bundle";
    return [bundleName stringByAppendingPathExtension:[bundleName.pathExtension isEqualToString:@"bundle"]?@"":bundlePathExtension];
}
@end
