#import "PusherchatPlugin.h"
#if __has_include(<pusherchat/pusherchat-Swift.h>)
#import <pusherchat/pusherchat-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pusherchat-Swift.h"
#endif

@implementation PusherchatPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPusherchatPlugin registerWithRegistrar:registrar];
}
@end
