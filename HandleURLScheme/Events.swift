//
//  Trace.swift
//  HandleURLScheme
//
//  Created by Bradley Barrows on 3/19/23.
//

import Foundation
import UIKit
import CoreGraphics
import CoreFoundation
import Darwin


@objc public class BBEvent:NSObject {

    @objc class func sendTouchWindowAt(x: Int, y: Int) {
        DispatchQueue.main.async {
            do {
                NSLog("BEB In the asyncAfter blovck 1")
                let app = UIApplication.shared;
                let kw = app.keyWindow;
//                let navigationController = UINavigationController(rootViewController: rootVC!)
                let eventGenerator = try EventGenerator(window: kw!)
                
                //                let eventGenerator = try EventGenerator(view: view)
                //                try eventGenerator.waitUntilHittable((rootVC?.view)!, timeout: 5)
                NSLog("BEB In the asyncAfter blovck 2")
                try eventGenerator.fingerTap(at: OffsetLocation(x: CGFloat(x), y: CGFloat(y)))
                NSLog("BEB In the asyncAfter blovck 3")
                //                    try eventGenerator.fingerTap(at: "username_field")
                //                    BackBoardServices.shared.eventSetDigitizerInfo(event, window.contextId, false, false, nil, 0, 0)
            } catch {
                print("BEB  Error occured in event Gen \(error).")
                NSLog("BEB  Error occured in event: \(error).")
            }
        }
    }
    
    @objc class func sendTouchWindow() {
        DispatchQueue.main.async {
            do {
                NSLog("BEB In the asyncAfter blovck 1")
                let app = UIApplication.shared;
                let kw = app.keyWindow;
//                let navigationController = UINavigationController(rootViewController: rootVC!)
                let eventGenerator = try EventGenerator(window: kw!)
                
                //                let eventGenerator = try EventGenerator(view: view)
                //                try eventGenerator.waitUntilHittable((rootVC?.view)!, timeout: 5)
                NSLog("BEB In the asyncAfter blovck 2")
                try eventGenerator.fingerTap(at: OffsetLocation(x: 50, y: 100))
                NSLog("BEB In the asyncAfter blovck 3")
                //                    try eventGenerator.fingerTap(at: "username_field")
                //                    BackBoardServices.shared.eventSetDigitizerInfo(event, window.contextId, false, false, nil, 0, 0)
            } catch {
                print("BEB  Error occured in event Gen \(error).")
                NSLog("BEB  Error occured in event: \(error).")
            }
        }
    }
    
    @objc class func sendTouchAtX(x: Int, y: Int) {
        DispatchQueue.main.async {
            do {
                NSLog("BEB In the asyncAfter blovck 1")
                let app = UIApplication.shared;
                let rootVC = app.keyWindow?.rootViewController;
                let navigationController = UINavigationController(rootViewController: rootVC!)
                let eventGenerator = try EventGenerator(viewController: navigationController)
                
                //                let eventGenerator = try EventGenerator(view: view)
                //                try eventGenerator.waitUntilHittable((rootVC?.view)!, timeout: 5)
                NSLog("BEB In the asyncAfter blovck 2")
                try eventGenerator.fingerTap(at: RelativeLocation(x: CGFloat(x), y: CGFloat(y)))
                NSLog("BEB In the asyncAfter blovck 3")
                //                    try eventGenerator.fingerTap(at: "username_field")
                //                    BackBoardServices.shared.eventSetDigitizerInfo(event, window.contextId, false, false, nil, 0, 0)
            } catch {
                print("BEB  Error occured in event Gen \(error).")
                NSLog("BEB  Error occured in event: \(error).")
            }
        }
    }
    
    
    
    @objc class func sendTouchToView(view: UIView, x: Int, y: Int) {
        DispatchQueue.main.async {
            do {
                NSLog("BEB In the asyncAfter blovck 1")
                let eventGenerator = try EventGenerator(view: view)
                //                try eventGenerator.waitUntilHittable((rootVC?.view)!, timeout: 5)
                NSLog("BEB In the asyncAfter blovck 2")
                print("BEB  x \(x)   y \(y)")
                try eventGenerator.fingerTap(at: RelativeLocation(x: CGFloat(x), y: CGFloat(y)))
                NSLog("BEB In the asyncAfter blovck 3")
                //                    try eventGenerator.fingerTap(at: "username_field")
                //                    BackBoardServices.shared.eventSetDigitizerInfo(event, window.contextId, false, false, nil, 0, 0)
            } catch {
                print("BEB  Error occured in event Gen \(error).")
                NSLog("BEB  Error occured in event: \(error).")
            }
        }
    }
    
    @objc class func sendTouch(app: UIApplication, atX: Int, atY: Int) {
        DispatchQueue.main.async {
            NSLog("BEB In swift startSwift /n/n")
            let keyWindow = app.keyWindow;
            let rootVC = keyWindow?.rootViewController;
            let navC = rootVC?.navigationController;
            NSLog("BEB Got the nav controller")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                NSLog("BEB In the asyncAfter blovck")
                do {
                    let eventGenerator = try EventGenerator(viewController: navC!)
                    NSLog("BEB In the asyncAfter blovck 1")
                    //                try eventGenerator.waitUntilHittable((rootVC?.view)!, timeout: 5)
                    NSLog("BEB In the asyncAfter blovck 2")
                    try eventGenerator.fingerTap(at: OffsetLocation(x: CGFloat(atX), y: CGFloat(atY)))
                    NSLog("BEB In the asyncAfter blovck 3")
                    //                    try eventGenerator.fingerTap(at: "username_field")
                    //                    BackBoardServices.shared.eventSetDigitizerInfo(event, window.contextId, false, false, nil, 0, 0)
                } catch {
                    print("BEB  Error occured in event Gen \(error).")
                NSLog("BEB  Error occured in event: \(error).")
                }
                
            }
        }
    }
    
    @objc class func startSwift(app: UIApplication) {
        DispatchQueue.main.async {
            NSLog("BEB In swift startSwift /n/n")
            let keyWindow = app.keyWindow;
            let rootVC = keyWindow?.rootViewController;
            let navC = rootVC?.navigationController;
            NSLog("BEB Got the nav controller")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                NSLog("BEB In the asyncAfter blovck")
                do {
                    let eventGenerator = try EventGenerator(viewController: navC!)
                    NSLog("BEB In the asyncAfter blovck 1")
                    //                try eventGenerator.waitUntilHittable((rootVC?.view)!, timeout: 5)
                    NSLog("BEB In the asyncAfter blovck 2")
                    try eventGenerator.fingerTap(at: OffsetLocation(x: 100, y: 100))
                    NSLog("BEB In the asyncAfter blovck 3")
                    //                    try eventGenerator.fingerTap(at: "username_field")
                    //                    BackBoardServices.shared.eventSetDigitizerInfo(event, window.contextId, false, false, nil, 0, 0)
                } catch {
                    print("BEB  Error occured in event Gen \(error).")
                NSLog("BEB  Error occured in event: \(error).")
                }
                
            }
        }
    }
}

