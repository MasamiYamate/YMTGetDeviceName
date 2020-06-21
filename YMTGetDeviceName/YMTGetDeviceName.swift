//
//  YMTGetDeviceName.swift
//  YMTGetDeviceName
//
//  Created by MasamiYamate on 2018/09/19.
//  Copyright © 2018年 MasamiYamate. All rights reserved.
//

@objcMembers open class YMTGetDeviceName {

    //Share instance
    public static let share: YMTGetDeviceName = YMTGetDeviceName()
    
    enum deviceCode: String {
        // MARK: Simulator
        case i386
        case x86_64
        // MARK: iPod
        /// iPod Touch 1st Generation
        case iPod1_1 = "iPod1,1"
        /// iPod Touch 2nd Generation
        case iPod2_1 = "iPod2,1"
        /// iPod Touch 3rd Generation
        case iPod3_1 = "iPod3,1"
        /// iPod Touch 4th Generation
        case iPod4_1 = "iPod4,1"
        /// iPod Touch 5th Generation
        case iPod5_1 = "iPod5,1"
        /// iPod Touch 6th Generation
        case iPod7_1 = "iPod7,1"
        /// iPod Touch 7th Generation
        case iPod9_1 = "iPod9,1"
        // MARK: iPhone
        /// iPhone 2G
        case iPhone1_1 = "iPhone1,1"
        /// iPhone 3G
        case iPhone1_2 = "iPhone1,2"
        /// iPhone 3GS
        case iPhone2_1 = "iPhone2,1"
        /// iPhone 4 GSM
        case iPhone3_1 = "iPhone3,1"
        /// iPhone 4 GSM 2012
        case iPhone3_2 = "iPhone3,2"
        /// iPhone 4 CDMA For Verizon,Sprint
        case iPhone3_3 = "iPhone3,3"
        /// iPhone 4S
        case iPhone4_1 = "iPhone4,1"
        /// iPhone 5 GSM
        case iPhone5_1 = "iPhone5,1"
        /// iPhone 5 Global
        case iPhone5_2 = "iPhone5,2"
        /// iPhone 5c GSM
        case iPhone5_3 = "iPhone5,3"
        /// iPhone 5c Global
        case iPhone5_4 = "iPhone5,4"
        /// iPhone 5s GSM
        case iPhone6_1 = "iPhone6,1"
        /// iPhone 5s Global
        case iPhone6_2 = "iPhone6,2"
        /// iPhone 6 Plus
        case iPhone7_1 = "iPhone7,1"
        /// iPhone 6
        case iPhone7_2 = "iPhone7,2"
        /// iPhone 6S
        case iPhone8_1 = "iPhone8,1"
        /// iPhone 6S Plus
        case iPhone8_2 = "iPhone8,2"
        /// iPhone SE
        case iPhone8_4 = "iPhone8,4"
        /// iPhone 7 A1660,A1779,A1780
        case iPhone9_1 = "iPhone9,1"
        /// iPhone 7 A1778
        case iPhone9_3 = "iPhone9,3"
        /// iPhone 7 Plus A1661,A1785,A1786
        case iPhone9_2 = "iPhone9,2"
        /// iPhone 7 Plus A1784
        case iPhone9_4 = "iPhone9,4"
        /// iPhone 8 A1863,A1906,A1907
        case iPhone10_1 = "iPhone10,1"
        /// iPhone 8 A1905
        case iPhone10_4 = "iPhone10,4"
        /// iPhone 8 Plus A1864,A1898,A1899
        case iPhone10_2 = "iPhone10,2"
        /// iPhone 8 Plus A1897
        case iPhone10_5 = "iPhone10,5"
        /// iPhone X A1865,A1902
        case iPhone10_3 = "iPhone10,3"
        /// iPhone X A1901
        case iPhone10_6 = "iPhone10,6"
        /// iPhone XR A1984,A2105,A2106,A2108
        case iPhone11_8 = "iPhone11,8"
        /// iPhone XS A2097,A2098
        case iPhone11_2 = "iPhone11,2"
        /// iPhone XS Max A1921,A2103
        case iPhone11_4 = "iPhone11,4"
        /// iPhone XS Max A2104
        case iPhone11_6 = "iPhone11,6"
        /// iPhone 11
        case iPhone12_1 = "iPhone12,1"
        /// iPhone 11 Pro
        case iPhone12_3 = "iPhone12,3"
        /// iPhone 11 Pro Max
        case iPhone12_5 = "iPhone12,5"
        /// iPhone SE 2nd Generation
        case iPhone12_8 = "iPhone12,8"
        
        
 
        
        
        
        
    }
    
    
    private let deviceCodeDic: [String:String] = [
//        /* Simulator */
//        "i386"      :"Simulator",
//        "x86_64"    :"Simulator",
//        /* iPod */
//        "iPod1,1"   :"iPod Touch 1st",            // iPod Touch 1st Generation
//        "iPod2,1"   :"iPod Touch 2nd",            // iPod Touch 2nd Generation
//        "iPod3,1"   :"iPod Touch 3rd",            // iPod Touch 3rd Generation
//        "iPod4,1"   :"iPod Touch 4th",            // iPod Touch 4th Generation
//        "iPod5,1"   :"iPod Touch 5th",            // iPod Touch 5th Generation
//        "iPod7,1"   :"iPod Touch 6th",            // iPod Touch 6th Generation
//        "iPod9,1"   :"iPod Touch 7th",            // iPod Touch 7th Generation
//
//        /* iPhone */
//        "iPhone1,1"   :"iPhone 2G",                 // iPhone 2G
//        "iPhone1,2"   :"iPhone 3G",                 // iPhone 3G
//        "iPhone2,1"   :"iPhone 3GS",                // iPhone 3GS
//        "iPhone3,1"   :"iPhone 4",                  // iPhone 4 GSM
//        "iPhone3,2"   :"iPhone 4",                  // iPhone 4 GSM 2012
//        "iPhone3,3"   :"iPhone 4",                  // iPhone 4 CDMA For Verizon,Sprint
//        "iPhone4,1"   :"iPhone 4S",                 // iPhone 4S
//        "iPhone5,1"   :"iPhone 5",                  // iPhone 5 GSM
//        "iPhone5,2"   :"iPhone 5",                  // iPhone 5 Global
//        "iPhone5,3"   :"iPhone 5c",                 // iPhone 5c GSM
//        "iPhone5,4"   :"iPhone 5c",                 // iPhone 5c Global
//        "iPhone6,1"   :"iPhone 5s",                 // iPhone 5s GSM
//        "iPhone6,2"   :"iPhone 5s",                 // iPhone 5s Global
//        "iPhone7,1"   :"iPhone 6 Plus",             // iPhone 6 Plus
//        "iPhone7,2"   :"iPhone 6",                  // iPhone 6
//        "iPhone8,1"   :"iPhone 6S",                 // iPhone 6S
//        "iPhone8,2"   :"iPhone 6S Plus",            // iPhone 6S Plus
//        "iPhone8,4"   :"iPhone SE",                 // iPhone SE
//        "iPhone9,1"   :"iPhone 7",                  // iPhone 7 A1660,A1779,A1780
//        "iPhone9,3"   :"iPhone 7",                  // iPhone 7 A1778
//        "iPhone9,2"   :"iPhone 7 Plus",             // iPhone 7 Plus A1661,A1785,A1786
//        "iPhone9,4"   :"iPhone 7 Plus",             // iPhone 7 Plus A1784
//        "iPhone10,1"  :"iPhone 8",                  // iPhone 8 A1863,A1906,A1907
//        "iPhone10,4"  :"iPhone 8",                  // iPhone 8 A1905
//        "iPhone10,2"  :"iPhone 8 Plus",             // iPhone 8 Plus A1864,A1898,A1899
//        "iPhone10,5"  :"iPhone 8 Plus",             // iPhone 8 Plus A1897
//        "iPhone10,3"  :"iPhone X",                  // iPhone X A1865,A1902
//        "iPhone10,6"  :"iPhone X",                  // iPhone X A1901
//        "iPhone11,8"  :"iPhone XR",                 // iPhone XR A1984,A2105,A2106,A2108
//        "iPhone11,2"  :"iPhone XS",                 // iPhone XS A2097,A2098
//        "iPhone11,4"  :"iPhone XS Max",             // iPhone XS Max A1921,A2103
//        "iPhone11,6"  :"iPhone XS Max",             // iPhone XS Max A2104
//        "iPhone12,1"  :"iPhone 11",                 // iPhone 11
//        "iPhone12,3"  :"iPhone 11 Pro",             // iPhone 11 Pro
//        "iPhone12,5"  :"iPhone 11 Pro Max",         // iPhone 11 Pro Max
//        "iPhone12,8"  :"iPhone SE 2nd",             // iPhone SE 2nd Generation
        
        /* iPad */
        "iPad1,1"   :"iPad 1 ",                     // iPad 1
        "iPad2,1"   :"iPad 2 WiFi",                 // iPad 2
        "iPad2,2"   :"iPad 2 Cell",                 // iPad 2 GSM
        "iPad2,3"   :"iPad 2 Cell",                 // iPad 2 CDMA (Cellular)
        "iPad2,4"   :"iPad 2 WiFi",                 // iPad 2 Mid2012
        "iPad2,5"   :"iPad Mini WiFi",              // iPad Mini WiFi
        "iPad2,6"   :"iPad Mini Cell",              // iPad Mini GSM (Cellular)
        "iPad2,7"   :"iPad Mini Cell",              // iPad Mini Global (Cellular)
        "iPad3,1"   :"iPad 3 WiFi",                 // iPad 3 WiFi
        "iPad3,2"   :"iPad 3 Cell",                 // iPad 3 CDMA (Cellular)
        "iPad3,3"   :"iPad 3 Cell",                 // iPad 3 GSM (Cellular)
        "iPad3,4"   :"iPad 4 WiFi",                 // iPad 4 WiFi
        "iPad3,5"   :"iPad 4 Cell",                 // iPad 4 GSM (Cellular)
        "iPad3,6"   :"iPad 4 Cell",                 // iPad 4 Global (Cellular)
        "iPad4,1"   :"iPad Air WiFi",               // iPad Air WiFi
        "iPad4,2"   :"iPad Air Cell",               // iPad Air Cellular
        "iPad4,3"   :"iPad Air China",              // iPad Air ChinaModel
        "iPad4,4"   :"iPad Mini 2 WiFi",            // iPad mini 2 WiFi
        "iPad4,5"   :"iPad Mini 2 Cell",            // iPad mini 2 Cellular
        "iPad4,6"   :"iPad Mini 2 China",           // iPad mini 2 ChinaModel
        "iPad4,7"   :"iPad Mini 3 WiFi",            // iPad mini 3 WiFi
        "iPad4,8"   :"iPad Mini 3 Cell",            // iPad mini 3 Cellular
        "iPad4,9"   :"iPad Mini 3 China",           // iPad mini 3 ChinaModel
        "iPad5,1"   :"iPad Mini 4 WiFi",            // iPad Mini 4 WiFi
        "iPad5,2"   :"iPad Mini 4 Cell",            // iPad Mini 4 Cellular
        "iPad5,3"   :"iPad Air 2 WiFi",             // iPad Air 2 WiFi
        "iPad5,4"   :"iPad Air 2 Cell",             // iPad Air 2 Cellular
        "iPad6,3"   :"iPad Pro 9.7inch WiFi",       // iPad Pro 9.7inch WiFi
        "iPad6,4"   :"iPad Pro 9.7inch Cell",       // iPad Pro 9.7inch Cellular
        "iPad6,7"   :"iPad Pro 12.9inch WiFi",      // iPad Pro 12.9inch WiFi
        "iPad6,8"   :"iPad Pro 12.9inch Cell",      // iPad Pro 12.9inch Cellular
        "iPad6,11"  :"iPad 5th WiFi",               // iPad 5th Generation WiFi
        "iPad6,12"  :"iPad 5th Cell",               // iPad 5th Generation Cellular
        "iPad7,1"   :"iPad Pro 12.9inch 2nd WiFi",  // iPad Pro 12.9inch 2nd Generation WiFi
        "iPad7,2"   :"iPad Pro 12.9inch 2nd",       // iPad Pro 12.9inch 2nd Generation Cellular
        "iPad7,3"   :"iPad Pro 10.5inch",           // iPad Pro 10.5inch A1701 WiFi
        "iPad7,4"   :"iPad Pro 10.5inch",           // iPad Pro 10.5inch A1709 Cellular
        "iPad7,5"   :"iPad 6th",                    // iPad 6th Generation WiFi
        "iPad7,6"   :"iPad 6th",                    // iPad 6th Generation Cellular
        "iPad7,11"  :"iPad 7th",                    // iPad 7th Generation WiFi
        "iPad7,12"  :"iPad 7th",                    // iPad 7th Generation Cellular
        "iPad8,1"   :"iPad Pro 11inch WiFi",        // iPad Pro 11inch WiFi
        "iPad8,2"   :"iPad Pro 11inch WiFi",        // iPad Pro 11inch WiFi
        "iPad8,3"   :"iPad Pro 11inch Cell",        // iPad Pro 11inch Cellular
        "iPad8,4"   :"iPad Pro 11inch Cell",        // iPad Pro 11inch Cellular
        "iPad8,5"   :"iPad Pro 12.9inch WiFi",      // iPad Pro 12.9inch WiFi
        "iPad8,6"   :"iPad Pro 12.9inch WiFi",      // iPad Pro 12.9inch WiFi
        "iPad8,7"   :"iPad Pro 12.9inch Cell",      // iPad Pro 12.9inch Cellular
        "iPad8,8"   :"iPad Pro 12.9inch Cell",      // iPad Pro 12.9inch Cellular
        "iPad11,1"  :"iPad Mini 5th WiFi",          // iPad mini 5th WiFi
        "iPad11,2"  :"iPad Mini 5th Cell",          // iPad mini 5th Cellular
        "iPad11,3"  :"iPad Air 3rd WiFi",           // iPad Air 3rd generation WiFi
        "iPad11,4"  :"iPad Air 3rd Cell"            // iPad Air 3rd generation Cellular
    ]

    /// Get device name from model number
    ///
    /// - Returns: Device name (iPhone X , iPhoneXS ... etc)
    @objc open func getDeviceName () -> String {
        var size : Int = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0, count: Int(size))
        sysctlbyname("hw.machine", &machine, &size, nil, 0)
        let code:String = String(cString:machine)
        
    

        if let deviceName = deviceCodeDic[code] {
            return deviceName
        }else{
            if code.range(of: "iPod") != nil {
                return "iPod Touch"
            }else if code.range(of: "iPad") != nil {
                return "iPad"
            }else if code.range(of: "iPhone") != nil {
                return "iPhone"
            }else{
                return "unknownDevice"
            }
        }
    }
    
}
