//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

#if __has_include(<yandex_mapkit/YandexMapkitPlugin.h>)
#import <yandex_mapkit/YandexMapkitPlugin.h>
#else
@import yandex_mapkit;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
  [YandexMapkitPlugin registerWithRegistrar:[registry registrarForPlugin:@"YandexMapkitPlugin"]];
}

@end
