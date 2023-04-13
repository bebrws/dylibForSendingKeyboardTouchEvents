//
//  BBEvent.h
//  HandleURLScheme
//
//  Created by Bradley Barrows on 4/9/23.
//

#ifndef BBEvent_h
#define BBEvent_h


#import "HandleURLScheme-Swift.h"

//
//@implementation HandleURLScheme
//
//@end


@interface BBEvent ()

+ (void)startSwift:(UIApplication *)app;
+ (void)sendTouch:(UIApplication *)application atX:(int)x atY:(int)y;
+ (void)sendTouchToView:(UIView *)view  atX:(int)x atY:(int)y;
+ (void)sendTouchAtX:(int)x atY:(int)y;
+ (void)sendTouchWindowAt:(int)x atY:(int)y;
+ (void)sendTouchWindow;


@end

#endif /* BBEvent_h */
