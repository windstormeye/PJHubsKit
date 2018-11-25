//
//  PJToolPhone.swift
//  PJHubsKit
//
//  Created by PJHubs on 2018/11/25.
//  Copyright © 2018 PJHubs. All rights reserved.
//

import UIKit

public extension UIDevice {
    var deviceIdentifier: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod1,1": return "iPod Touch 1"
        case "iPod2,1": return "iPod Touch 2"
        case "iPod3,1": return "iPod Touch 3"
        case "iPod4,1": return "iPod Touch 4"
        case "iPod5,1": return "iPod Touch (5 Gen)"
        case "iPod7,1": return "iPod Touch 6"
            
        case "iPhone3,1",
             "iPhone3,2",
             "iPhone3,3": return "iPhone 4"
        case "iPhone4,1": return "iPhone 4s"
        case "iPhone5,1": return "iPhone 5"
        case  "iPhone5,2": return "iPhone 5 (GSM+CDMA)"
        case "iPhone5,3": return "iPhone 5c (GSM)"
        case "iPhone5,4": return "iPhone 5c (GSM+CDMA)"
        case "iPhone6,1": return "iPhone 5s (GSM)"
        case "iPhone6,2": return "iPhone 5s (GSM+CDMA)"
        case "iPhone7,2": return "iPhone 6"
        case "iPhone7,1": return "iPhone 6 Plus"
        case "iPhone8,1": return "iPhone 6s"
        case "iPhone8,2": return "iPhone 6s Plus"
        case "iPhone8,4": return "iPhone SE"
        case "iPhone9,1": return "CN, JP, HK iPhone 7"
        case "iPhone9,2": return "CN, HK iPhone 7 Plus"
        case "iPhone9,3": return "AU, TW iPhone 7"
        case "iPhone9,4": return "AU, TW iPhone 7 Plus"
        case "iPhone10,1",
             "iPhone10,4": return "iPhone 8"
        case "iPhone10,2",
             "iPhone10,5": return "iPhone 8 Plus"
        case "iPhone10,3",
             "iPhone10,6": return "iPhone X"
        case "iPhone11,2": return "iPhone Xs"
        case "iPhone11,8": return "iPhone XR"
        case "iPhone11,6": return "iPhone Xs Max"
            
        case "iPad1,1": return "iPad"
        case "iPad1,2": return "iPad 3G"
        case "iPad2,1": return "iPad 2 Wifi"
        case "iPad2,2": return "iPad 2 GSM"
        case "iPad2,3": return "iPad 2 CDMA"
        case "iPad2,4": return "iPad 2 Wifi"
        case "iPad2,5": return "iPad Mini Wifi"
        case "iPad2,6": return "iPad Mini Wifi + MN"
        case "iPad2,7": return "iPad Mini Wifi + MN(MM)"
        case "iPad3,1": return "iPad 3 Wifi"
        case "iPad3,2": return "iPad 3 Wifi + MN"
        case "iPad3,3": return "iPad 3 Wifi + MN(VZ)"
        case "iPad3,4": return "iPad 4 Wifi"
        case "iPad3,5": return "iPad 4 Wifi + MN"
        case "iPad3,6": return "iPad 4 Wifi + MN(MM)"
        case "iPad4,1": return "iPad Air Wifi"
        case "iPad4,2": return "iPad Air Wifi + MN"
        case "iPad4,3": return "iPad Air Wifi + MN(TD-LTE)"
        case "iPad4,4": return "iPad Mini 2 Wifi"
        case "iPad4,5": return "iPad Mini 2 Wifi + MN"
        case "iPad4,6": return "iPad Mini 2 Wifi + MN(TD-LTE)"
        case "iPad4,7": return "iPad Mini 3 Wifi"
        case "iPad4,8": return "iPad Mini 3 Wifi + MN"
        case "iPad4,9": return "iPad Mini 3"
        case "iPad5,1": return "iPad Mini 4 Wifi"
        case "iPad5,2": return "iPad Mini 4 Wifi + MN"
        case "iPad5,3": return "iPad Air 2 Wifi"
        case "iPad5,4": return "iPad Air 2 Wifi + MN"
        case "iPad6,3": return "iPad Pro 9.7 Wifi"
        case "iPad6,4": return "iPad Pro 9.7 Wifi + MN"
        case "iPad6,7": return "iPad Pro(1) 12.9 Wifi"
        case "iPad6,8": return "iPad Pro(1) 12.9 Wifi + MN"
        case "iPad6,11": return "iPad 5 Wifi"
        case "iPad6,12": return "iPad 5 Wifi + MN"
        case "iPad7,1": return "iPad Pro(2) 12.9 Wifi"
        case "iPad7,2": return "iPad Pro(2) 12.9 Wifi + MN"
        case "iPad7,3": return "iPad Pro 10.5 Wifi"
        case "iPad7,4": return "iPad Pro 10.5 Wifi + MN"
        case "iPad7,5": return "iPad 6 Wifi"
        case "iPad7,6": return "iPad 6 Wifi + MN"
        case "iPad8,1",
             "iPad8,2": return "iPad Pro 11 Wifi"
        case "iPad8,4",
             "iPad8,3": return "iPad Pro 11 Wifi + MN"
        case "iPad8,5",
             "iPad8,6": return "iPad Pro(3) 12.9 Wifi"
        case "iPad8,7",
             "iPad8,8": return "iPad Pro(3) 12.9 Wifi + MN"
        case "i386",
             "x86_64": return "Simulator"
        default:  return identifier
        }
    }
}
