#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>

#import <AppCenterReactNativeShared/AppCenterReactNativeShared.h>
#import <AppCenterReactNative.h>
#import <AppCenterReactNativeAnalytics.h>
#import <AppCenterReactNativeCrashes.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"InflationCalc";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};
  
  [AppCenterReactNativeShared setStartAutomatically:YES];
<<<<<<< Updated upstream
  [AppCenterReactNativeShared setAppSecret:@"c7610d70-71f3-4ccd-a190-5e6a33efcf24"];
=======
  [AppCenterReactNativeShared setAppSecret:@"285d0c51-06d2-4007-a3ad-9fa62708f53f"];
>>>>>>> Stashed changes
  [AppCenterReactNative register];
  [AppCenterReactNativeAnalytics registerWithInitiallyEnabled:true];
  [AppCenterReactNativeCrashes registerWithAutomaticProcessing];
  
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
