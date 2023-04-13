//
//  HandleURLScheme.h
//  HandleURLScheme
//
//  Created by Bradley Barrows on 3/12/23.
//

//#import <Foundation/Foundation.h>
//
//@interface HandleURLScheme : NSObject
//
//@end

#import <UIKit/UIKit.h>

#import "HandleURLScheme-Swift.h"

//@class BBEvent;

@interface BBEvent ()

+ (void)startSwift:(UIApplication *)app;
+ (void)sendTouch:(UIApplication *)application atX:(int)x atY:(int)y;
+ (void)sendTouchToView:(UIView *)view  atX:(int)x atY:(int)y;
+ (void)sendTouchAtX:(int)x atY:(int)y;
+ (void)sendTouchWindowAt:(int)x atY:(int)y;
+ (void)sendTouchWindow;


@end


@interface BBTrace : NSObject<UIApplicationDelegate>


@end

