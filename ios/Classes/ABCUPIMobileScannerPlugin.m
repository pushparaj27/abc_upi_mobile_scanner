#import "ABCUPIMobileScannerPlugin.h"
#if __has_include(<abc_upi_mobile_scanner/abc_upi_mobile_scanner-Swift.h>)
#import <abc_upi_mobile_scanner/abc_upi_mobile_scanner-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "abc_upi_mobile_scanner-Swift.h"
#endif

@implementation ABCUPIMobileScannerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftABCUPIMobileScannerPlugin registerWithRegistrar:registrar];
}
@end
