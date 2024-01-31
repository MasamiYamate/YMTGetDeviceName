//
//  YMTGetDeviceName.swift
//  YMTGetDeviceName
//
//  Created by MasamiYamate on 2018/09/19.
//  Copyright © 2018年 MasamiYamate. All rights reserved.
//
import Foundation

public class YMTGetDeviceName {

    /// Device codes
    enum DeviceCode: String {
        // MARK: Simulator
        case i386
        case x86_64
        case arm64

        // MARK: iOS Platform
        // MARK: Mac on iOS App
        /// Mac
        case macFamily20_1 = "MacFamily20,1"

        // MARK: Reality device on iOS App
        /// Vision Pro
        case realityFamily22_1 = "RealityFamily22,1"

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
        /// iPhone 12 mini
        case iPhone13_1 = "iPhone13,1"
        /// iPhone 12
        case iPhone13_2 = "iPhone13,2"
        /// iPhone 12 Pro
        case iPhone13_3 = "iPhone13,3"
        /// iPhone 12 Pro Max
        case iPhone13_4 = "iPhone13,4"
        /// iPhone 13 mini
        case iPhone14_4 = "iPhone14,4"
        /// iPhone 13
        case iPhone14_5 = "iPhone14,5"
        /// iPhone13  Pro
        case iPhone14_2 = "iPhone14,2"
        /// iPhone13 Pro Max
        case iPhone14_3 = "iPhone14,3"
        /// iPhone SE 3rd Generation
        case iPhone14_6 = "iPhone14,6"
        /// iPhone 14
        case iPhone14_7 = "iPhone14,7"
        /// iPhone 14 Plus
        case iPhone14_8 = "iPhone14,8"
        /// iPhone 14 Pro
        case iPhone15_2 = "iPhone15,2"
        /// iPhone 14 Pro Max
        case iPhone15_3 = "iPhone15,3"
        /// iPhone 15
        case iPhone15_4 = "iPhone15,4"
        /// iPhone 15 Plus
        case iPhone15_5 = "iPhone15,5"
        /// iPhone 15 Pro
        case iPhone16_1 = "iPhone16,1"
        /// iPhone 15 Pro Max
        case iPhone16_2 = "iPhone16,2"

        // MARK: iPad
        /// iPad 1
        case iPad1_1 = "iPad1,1"
        /// iPad 2
        case iPad2_1 = "iPad2,1"
        /// iPad2 GSM
        case iPad2_2 = "iPad2,2"
        /// iPad 2 CDMA (Cellular)
        case iPad2_3 = "iPad2,3"
        /// iPad 2 Mid2012
        case iPad2_4 = "iPad2,4"
        /// iPad Mini WiFi
        case iPad2_5 = "iPad2,5"
        /// iPad Mini GSM (Cellular)
        case iPad2_6 = "iPad2,6"
        /// iPad Mini Global (Cellular)
        case iPad2_7 = "iPad2,7"
        /// iPad 3 WiFi
        case iPad3_1 = "iPad3,1"
        /// iPad 3 CDMA (Cellular)
        case iPad3_2 = "iPad3,2"
        /// iPad 3 GSM (Cellular)
        case iPad3_3 = "iPad3,3"
        /// iPad 4 WiFi
        case iPad3_4 = "iPad3,4"
        /// iPad 4 GSM (Cellular)
        case iPad3_5 = "iPad3,5"
        /// iPad 4 Global (Cellular)
        case iPad3_6 = "iPad3,6"
        /// iPad Air WiFi
        case iPad4_1 = "iPad4,1"
        /// iPad Air Cellular
        case iPad4_2 = "iPad4,2"
        /// iPad Air ChinaModel
        case iPad4_3 = "iPad4,3"
        /// iPad mini 2 WiFi
        case iPad4_4 = "iPad4,4"
        /// iPad mini 2 Cellular
        case iPad4_5 = "iPad4,5"
        /// iPad mini 2 ChinaModel
        case iPad4_6 = "iPad4,6"
        /// iPad mini 3 WiFi
        case iPad4_7 = "iPad4,7"
        /// iPad mini 3 Cellular
        case iPad4_8 = "iPad4,8"
        /// iPad mini 3 ChinaModel
        case iPad4_9 = "iPad4,9"
        /// iPad Mini 4 WiFi
        case iPad5_1 = "iPad5,1"
        /// iPad Mini 4 Cellular
        case iPad5_2 = "iPad5,2"
        /// iPad Air 2 WiFi
        case iPad5_3 = "iPad5,3"
        /// iPad Air 2 Cellular
        case iPad5_4 = "iPad5,4"
        /// iPad Pro 9.7inch WiFi
        case iPad6_3 = "iPad6,3"
        /// iPad Pro 9.7inch Cellular
        case iPad6_4 = "iPad6,4"
        /// iPad Pro 12.9inch WiFi
        case iPad6_7 = "iPad6,7"
        /// iPad Pro 12.9inch Cellular
        case iPad6_8 = "iPad6,8"
        /// iPad 5th Generation WiFi
        case iPad6_11 = "iPad6,11"
        /// iPad 5th Generation Cellular
        case iPad6_12 = "iPad6,12"
        /// iPad Pro 12.9inch 2nd Generation WiFi
        case iPad7_1 = "iPad7,1"
        /// iPad Pro 12.9inch 2nd Generation Cellular
        case iPad7_2 = "iPad7,2"
        /// iPad Pro 10.5inch A1701 WiFi
        case iPad7_3 = "iPad7,3"
        /// iPad Pro 10.5inch A1709 Cellular
        case iPad7_4 = "iPad7,4"
        /// iPad 6th Generation WiFi
        case iPad7_5 = "iPad7,5"
        /// iPad 6th Generation Cellular
        case iPad7_6 = "iPad7,6"
        /// iPad 7th Generation WiFi
        case iPad7_11 = "iPad7,11"
        /// iPad 7th Generation Cellular
        case iPad7_12 = "iPad7,12"
        /// iPad Pro 11inch WiFi
        case iPad8_1 = "iPad8,1"
        /// iPad Pro 11inch WiFi
        case iPad8_2 = "iPad8,2"
        /// iPad Pro 11inch Cellular
        case iPad8_3 = "iPad8,3"
        /// iPad Pro 11inch Cellular
        case iPad8_4 = "iPad8,4"
        /// iPad Pro 12.9inch WiFi
        case iPad8_5 = "iPad8,5"
        /// iPad Pro 12.9inch WiFi
        case iPad8_6 = "iPad8,6"
        /// iPad Pro 12.9inch Cellular
        case iPad8_7 = "iPad8,7"
        /// iPad Pro 12.9inch Cellular
        case iPad8_8 = "iPad8,8"
        /// iPad Pro 11inch 2nd generation WiFi
        case iPad8_9 = "iPad8,9"
        /// iPad Pro 11inch 2nd generation Cellular
        case iPad8_10 = "iPad8,10"
        /// iPad Pro 12.9inch 4th generation WiFi
        case iPad8_11 = "iPad8,11"
        /// iPad Pro 12.9inch 4th generation Cellular
        case iPad8_12 = "iPad8,12"
        /// iPad mini 5th WiFi
        case iPad11_1 = "iPad11,1"
        /// iPad mini 5th Cellular
        case iPad11_2 = "iPad11,2"
        /// iPad Air 3rd generation WiFi
        case iPad11_3 = "iPad11,3"
        /// iPad Air 3rd generation Cellular
        case iPad11_4 = "iPad11,4"
        /// iPad 8th generation WiFi
        case iPad11_6 = "iPad11,6"
        /// iPad 8th generation Cellular
        case iPad11_7 = "iPad11,7"
        /// iPad Air 4th generation WiFi
        case iPad13_1 = "iPad13,1"
        /// iPad Air 4th generation Cellular
        case iPad13_2 = "iPad13,2"
        /// iPad Pro 11inch 3rd generation WiFi
        case iPad13_4 = "iPad13,4"
        /// iPad Pro 11inch 3rd generation WiFi
        case iPad13_5 = "iPad13,5"
        /// iPad Pro 11inch 3rd generation Cellular
        case iPad13_6 = "iPad13,6"
        /// iPad Pro 11inch 3rd generation Cellular
        case iPad13_7 = "iPad13,7"
        /// iPad Pro 12inch 5th generation WiFi
        case iPad13_8 = "iPad13,8"
        /// iPad Pro 12inch 5th generation WiFi
        case iPad13_9 = "iPad13,9"
        /// iPad Pro 12inch 5th generation Cellular
        case iPad13_10 = "iPad13,10"
        /// iPad Pro 12inch 5th generation Cellular
        case iPad13_11 = "iPad13,11"
        /// iPad mini 6th generation WiFi
        case iPad14_1 = "iPad14,1"
        /// iPad mini 6th generation Cellular
        case iPad14_2 = "iPad14,2"
        /// iPad 9th generation WiFi
        case iPad12_1 = "iPad12,1"
        /// iPad 9th generation Cellular
        case iPad12_2 = "iPad12,2"
        /// iPad Air 5th generation WiFi
        case iPad13_16 = "iPad13,16"
        /// iPad Air 5th generation Cellular
        case iPad13_17 = "iPad13,17"
        /// iPad 10th Gen
        case iPad13_18 = "iPad13,18"
        /// iPad 10th Gen
        case iPad13_19 = "iPad13,19"
        /// iPad Pro 11 inch 4th Gen
        case iPad14_3_A = "iPad14,3-A"
        /// iPad Pro 11 inch 4th Gen
        case iPad14_3_B = "iPad14,3-B"
        /// iPad Pro 11 inch 4th Gen
        case iPad14_4_A = "iPad14,4-A"
        /// iPad Pro 11 inch 4th Gen
        case iPad14_4_B = "iPad14,4-B"
        /// iPad Pro 12.9 inch 6th Gen
        case iPad14_5_A = "iPad14,5-A"
        /// iPad Pro 12.9 inch 6th Gen
        case iPad14_5_B = "iPad14,5-B"
        /// iPad Pro 12.9 inch 6th Gen
        case iPad14_6_A = "iPad14,6-A"
        /// iPad Pro 12.9 inch 6th Gen
        case iPad14_6_B = "iPad14,6-B"

        // MARK: WatchOS Platform
        /// Apple Watch (1st generation) 38mm
        case watch1_1 = "Watch1,1"
        /// Apple Watch (1st generation) 42mm
        case watch1_2 = "Watch1,2"
        /// Apple Watch Series 2 38mm
        case watch2_3 = "Watch2,3"
        /// Apple Watch Series 2 42mm
        case watch2_4 = "Watch2,4"
        /// Apple Watch Series 1 38mm
        case watch2_6 = "Watch2,6"
        /// Apple Watch Series 1 42mm
        case watch2_7 = "Watch2,7"
        /// Apple Watch Series 3 (GPS + Cellular) 38mm
        case watch3_1 = "Watch3,1"
        /// Apple Watch Series 3 (GPS + Cellular) 42mm
        case watch3_2 = "Watch3,2"
        /// Apple Watch Series 3 (GPS) 38mm
        case watch3_3 = "Watch3,3"
        /// Apple Watch Series 3 (GPS) 42mm
        case watch3_4 = "Watch3,4"
        /// Apple Watch Series 4
        case watch4_1 = "Watch4,1"
        /// Apple Watch Series 4
        case watch4_2 = "Watch4,2"
        /// Apple Watch Series 4
        case watch4_3 = "Watch4,3"
        /// Apple Watch Series 4
        case watch4_4 = "Watch4,4"
        /// Apple Watch Series 5
        case watch5_1 = "Watch5,1"
        /// Apple Watch Series 5
        case watch5_2 = "Watch5,2"
        /// Apple Watch Series 5
        case watch5_3 = "Watch5,3"
        /// Apple Watch Series 5
        case watch5_4 = "Watch5,4"
        /// Apple Watch SE (GPS)
        case watch5_9 = "Watch5,9"
        /// Apple Watch SE (GPS)
        case watch5_10 = "Watch5,10"
        /// Apple Watch SE (GPS + Cellular)
        case watch5_11 = "Watch5,11"
        /// Apple Watch SE (GPS + Cellular)
        case watch5_12 = "Watch5,12"
        /// Apple Watch Series 6 (GPS)
        case watch6_1 = "Watch6,1"
        /// Apple Watch Series 6 (GPS)
        case watch6_2 = "Watch6,2"
        /// Apple Watch Series 6 (GPS + Cellular)
        case watch6_3 = "Watch6,3"
        /// Apple Watch Series 6 (GPS + Cellular)
        case watch6_4 = "Watch6,4"
        /// Apple Watch Series 7 (GPS)
        case watch6_6 = "Watch6,6"
        /// Apple Watch Series 7 (GPS)
        case watch6_7 = "Watch6,7"
        /// Apple Watch Series 7 (GPS + Cellular)
        case watch6_8 = "Watch6,8"
        /// Apple Watch Series 7 (GPS + Cellular)
        case watch6_9 = "Watch6,9"
        /// Apple Watch SE (GPS)
        case watch6_10 = "Watch6,10"
        /// Apple Watch SE (GPS)
        case watch6_11 = "Watch6,11"
        /// Apple Watch SE (GPS + Cellular)
        case watch6_12 = "Watch6,12"
        /// Apple Watch SE (GPS + Cellular)
        case watch6_13 = "Watch6,13"
        /// Apple Watch Series 8 (GPS)
        case watch6_14 = "Watch6,14"
        /// Apple Watch Series 8 (GPS)
        case watch6_15 = "Watch6,15"
        /// Apple Watch Series 8 (GPS + Cellular)
        case watch6_16 = "Watch6,16"
        /// Apple Watch Series 8 (GPS + Cellular)
        case watch6_17 = "Watch6,17"
        /// Apple Watch Ultra
        case watch6_18 = "Watch6,18"
        /// Apple Watch Series 9 (GPS)
        case watch7_1 = "Watch7,1"
        /// Apple Watch Series 9 (GPS)
        case watch7_2 = "Watch7,2"
        /// Apple Watch Series 9 (GPS + Cellular)
        case watch7_3 = "Watch7,3"
        /// Apple Watch Series 9 (GPS + Cellular)
        case watch7_4 = "Watch7,4"
        /// Apple Watch Ultra 2
        case watch7_5 = "Watch7,5"

        // MARK: TVOS Platform
        /// Apple TV 1st Generation
        case appleTV1_1 = "AppleTV1,1"
        /// Apple TV 2nd Generation
        case appleTV2_1 = "AppleTV2,1"
        /// Apple TV 3rd Generation (Early 2012)
        case appleTV3_1 = "AppleTV3,1"
        /// Apple TV 3rd Generation (Early 2013)
        case appleTV3_2 = "AppleTV3,2"
        /// Apple TV 4th Generation
        case appleTV5_3 = "AppleTV5,3"
        /// Apple TV 4K
        case appleTV6_2 = "AppleTV6,2"
        /// Apple TV 4K 2nd Generation
        case appleTV11_1 = "AppleTV11,1"
        /// Apple TV 4K 3rd Generation
        case appleTV14_1 = "AppleTV14,1"

        // MARK: XROS Platform
        // MARK: Reality Device
        case realityDevice14_1 = "RealityDevice14,1"

        /// device name
        func deviceName() -> String {
            switch self {
            // MARK: Simulator
            case .i386, .x86_64, .arm64:
                return "Simulator"

            // MARK: iOS Platform
            // MARK: Mac on iOS App
            case .macFamily20_1:
                return "Mac"
            // MARK: iPod
            case .iPod1_1:
                return "iPod Touch 1st Generation"
            case .iPod2_1:
                return "iPod Touch 2nd Generation"
            case .iPod3_1:
                return "iPod Touch 3rd Generation"
            case .iPod4_1:
                return "iPod Touch 4th Generation"
            case .iPod5_1:
                return "iPod Touch 5th Generation"
            case .iPod7_1:
                return "iPod Touch 6th Generation"
            case .iPod9_1:
                return "iPod Touch 7th Generation"
            // MARK: iPhone
            case .iPhone1_1:
                return "iPhone 2G"
            case .iPhone1_2:
                return "iPhone 3G"
            case .iPhone2_1:
                return "iPhone 3GS"
            case .iPhone3_1, .iPhone3_2, .iPhone3_3:
                return "iPhone4"
            case .iPhone4_1:
                return "iPhone 4S"
            case .iPhone5_1, .iPhone5_2:
                return "iPhone 5"
            case .iPhone5_3, .iPhone5_4:
                return "iPhone 5c"
            case .iPhone6_1, .iPhone6_2:
                return "iPhone 5s"
            case .iPhone7_1:
                return "iPhone 6 Plus"
            case .iPhone7_2:
                return "iPhone 6"
            case .iPhone8_1:
                return "iPhone 6s"
            case .iPhone8_2:
                return "iPhone 6s Plus"
            case .iPhone8_4:
                return "iPhone SE 1st Generation"
            case .iPhone9_1, .iPhone9_3:
                return "iPhone 7"
            case .iPhone9_2, .iPhone9_4:
                return "iPhone 7 Plus"
            case .iPhone10_1, .iPhone10_4:
                return "iPhone 8"
            case .iPhone10_2, .iPhone10_5:
                return "iPhone 8 Plus"
            case .iPhone10_3, .iPhone10_6:
                return "iPhone X"
            case .iPhone11_8:
                return "iPhone XR"
            case .iPhone11_2:
                return "iPhone XS"
            case .iPhone11_4, .iPhone11_6:
                return "iPhone XS Max"
            case .iPhone12_1:
                return "iPhone 11"
            case .iPhone12_3:
                return "iPhone 11 Pro"
            case .iPhone12_5:
                return "iPhone 11 Pro Max"
            case .iPhone12_8:
                return "iPhone SE 2nd Generation"
            case .iPhone13_1:
                return "iPhone 12 mini"
            case .iPhone13_2:
                return "iPhone 12"
            case .iPhone13_3:
                return "iPhone 12 Pro"
            case .iPhone13_4:
                return "iPhone 12 Pro Max"
            case .iPhone14_2:
                return "iPhone 13 Pro"
            case .iPhone14_3:
                return "iPhone 13 Pro Max"
            case .iPhone14_4:
                return "iPhone 13 mini"
            case .iPhone14_5:
                return "iPhone 13"
            case .iPhone14_6:
                return "iPhone SE 3rd Generation"
            case .iPhone14_7:
                return "iPhone 14"
            case .iPhone14_8:
                return "iPhone 14 Plus"
            case .iPhone15_2:
                return "iPhone 14 Pro"
            case .iPhone15_3:
                return "iPhone 14 Pro Max"
            case .iPhone15_4:
                return "iPhone 15"
            case .iPhone15_5:
                return "iPhone 15 Plus"
            case .iPhone16_1:
                return "iPhone 15 Pro"
            case .iPhone16_2:
                return "iPhone 15 Pro Max"
            // MARK: iPad
            case .iPad1_1:
                return "iPad 1"
            case .iPad2_1, .iPad2_4:
                return "iPad 2 WiFi"
            case .iPad2_2, .iPad2_3:
                return "iPad 2 Cellular"
            case .iPad2_5:
                return "iPad mini 1st Generation WiFi"
            case .iPad2_6, .iPad2_7:
                return "iPad mini 1st Generation Cellular"
            case .iPad3_1:
                return "iPad 3 WiFi"
            case .iPad3_2, .iPad3_3:
                return "iPad 3 Cellular"
            case .iPad3_4:
                return "iPad 4 WiFi"
            case .iPad3_5, .iPad3_6:
                return "iPad 4 Cellular"
            case .iPad4_1:
                return "iPad Air 1st Generation WiFi"
            case .iPad4_2, .iPad4_3:
                return "iPad Air 1st Generation Cellular"
            case .iPad4_4:
                return "iPad mini 2 WiFi"
            case .iPad4_5, .iPad4_6:
                return "iPad mini 2 Cellular"
            case .iPad4_7:
                return "iPad mini 3 WiFi"
            case .iPad4_8, .iPad4_9:
                return "iPad mini 3 Cellular"
            case .iPad5_1:
                return "iPad mini 4 WiFi"
            case .iPad5_2:
                return "iPad mini 4 Cellular"
            case .iPad5_3:
                return "iPad Air 2 WiFi"
            case .iPad5_4:
                return "iPad Air 2 Cellular"
            case .iPad6_3:
                return "iPad Pro 9.7inch WiFi"
            case .iPad6_4:
                return "iPad Pro 9.7inch Cellular"
            case .iPad6_7:
                return "iPad Pro 12.9inch WiFi"
            case .iPad6_8:
                return "iPad Pro 12.9inch WiFi"
            case .iPad6_11:
                return "iPad 5th Generation WiFi"
            case .iPad6_12:
                return "iPad 5th Generation Cellular"
            case .iPad7_1:
                return "iPad Pro 12.9inch 2nd Generation WiFi"
            case .iPad7_2:
                return "iPad Pro 12.9inch 2nd Generation Cellular"
            case .iPad7_3:
                return "iPad Pro 10.5inch WiFi"
            case .iPad7_4:
                return "iPad Pro 10.5inch Cellular"
            case .iPad7_5:
                return "iPad 6th Generation WiFi"
            case .iPad7_6:
                return "iPad 6th Generation Cellular"
            case .iPad7_11:
                return "iPad 7th Generation WiFi"
            case .iPad7_12:
                return "iPad 7th Generation Cellular"
            case .iPad8_1, .iPad8_2:
                return "iPad Pro 11inch WiFi"
            case .iPad8_3, .iPad8_4:
                return "iPad Pro 11inch Cellular"
            case .iPad8_5, .iPad8_6:
                return "iPad Pro 12.9inch 3rd Generation WiFi"
            case .iPad8_7, .iPad8_8:
                return "iPad Pro 12.9inch 3rd Generation Cellular"
            case .iPad8_9:
                return "iPad Pro 11inch 2nd Generation WiFi"
            case .iPad8_10:
                return "iPad Pro 11inch 2nd Generation Cellular"
            case .iPad8_11:
                return "iPad Pro 12.9inch 4th Generation WiFi"
            case .iPad8_12:
                return "iPad Pro 12.9inch 4th Generation Cellular"
            case .iPad11_1:
                return "iPad mini 5th Generation WiFi"
            case .iPad11_2:
                return "iPad mini 5th Generation Cellular"
            case .iPad11_3:
                return "iPad Air 3rd Generation WiFi"
            case .iPad11_4:
                return "iPad Air 3rd Generation Cellular"
            case .iPad11_6:
                return "iPad 8th Generation WiFi"
            case .iPad11_7:
                return "iPad 8th Generation Cellular"
            case .iPad13_1:
                return "iPad Air 4th Generation WiFi"
            case .iPad13_2:
                return "iPad Air 4th Generation Cellular"
            case .iPad13_4, .iPad13_5:
                return "iPad Pro 11inch 3rd Generation WiFi"
            case .iPad13_6, .iPad13_7:
                return "iPad Pro 11inch 3rd Generation Cellular"
            case .iPad13_8, .iPad13_9:
                return "iPad Pro 12.9inch 5th Generation WiFi"
            case .iPad13_10, .iPad13_11:
                return "iPad Pro 12.9inch 5th Generation Cellular"
            case .iPad14_1:
                return "iPad mini 6th Generation WiFi"
            case .iPad14_2:
                return "iPad mini 6th Generation Cellular"
            case .iPad12_1:
                return "iPad 9th generation WiFi"
            case .iPad12_2:
                return "iPad 9th generation Cellular"
            case .iPad13_16:
                return "iPad Air 5th Generation WiFi"
            case .iPad13_17:
                return "iPad Air 5th Generation Cellular"
            case .iPad13_18:
                return "iPad 10th Gen"
            case .iPad13_19:
                return "iPad 10th Gen"
            case .iPad14_3_A:
                return "iPad Pro 11 inch 4th Gen"
            case .iPad14_3_B:
                return "iPad Pro 11 inch 4th Gen"
            case .iPad14_4_A:
                return "iPad Pro 11 inch 4th Gen"
            case .iPad14_4_B:
                return "iPad Pro 11 inch 4th Gen"
            case .iPad14_5_A:
                return "iPad Pro 12.9 inch 6th Gen"
            case .iPad14_5_B:
                return "iPad Pro 12.9 inch 6th Gen"
            case .iPad14_6_A:
                return "iPad Pro 12.9 inch 6th Gen"
            case .iPad14_6_B:
                return "iPad Pro 12.9 inch 6th Gen"

            // MARK: WatchOS Platform
            case .watch1_1:
                return "Apple Watch (1st generation) 38mm"
            case .watch1_2:
                return "Apple Watch (1st generation) 42mm"
            case .watch2_3:
                return "Apple Watch Series 2 38mm"
            case .watch2_4:
                return "Apple Watch Series 2 42mm"
            case .watch2_6:
                return "Apple Watch Series 1 38mm"
            case .watch2_7:
                return "Apple Watch Series 1 42mm"
            case .watch3_1:
                return "Apple Watch Series 3 (GPS + Cellular) 38mm"
            case .watch3_2:
                return "Apple Watch Series 3 (GPS + Cellular) 42mm"
            case .watch3_3:
                return "Apple Watch Series 3 (GPS) 38mm"
            case .watch3_4:
                return "Apple Watch Series 3 (GPS) 42mm"
            case .watch4_1, .watch4_2, .watch4_3, .watch4_4:
                return "Apple Watch Series 4"
            case .watch5_1, .watch5_2, .watch5_3, .watch5_4:
                return "Apple Watch Series 5"
            case .watch5_9, .watch5_10:
                return "Apple Watch SE (GPS)"
            case .watch5_11, .watch5_12:
                return "Apple Watch SE (GPS + Cellular)"
            case .watch6_1, .watch6_2:
                return "Apple Watch Series 6 (GPS)"
            case .watch6_3, .watch6_4:
                return "Apple Watch Series 6 (GPS + Cellular)"
            case .watch6_6, .watch6_7:
                return "Apple Watch Series 7 (GPS)"
            case .watch6_8, .watch6_9:
                return "Apple Watch Series 7 (GPS + Cellular)"
            case .watch6_10, .watch6_11:
                return "Apple Watch SE (GPS)"
            case .watch6_12, .watch6_13:
                return "Apple Watch SE (GPS + Cellular)"
            case .watch6_14, .watch6_15:
                return "Apple Watch Series 8 (GPS)"
            case .watch6_16, .watch6_17:
                return "Apple Watch Series 8 (GPS + Cellular)"
            case .watch6_18:
                return "Apple Watch Ultra"
            case .watch7_1, .watch7_2:
                return "Apple Watch Series 9 (GPS)"
            case .watch7_3, .watch7_4:
                return "Apple Watch Series 9 (GPS + Cellular)"
            case .watch7_5:
                return "Apple Watch Ultra 2"

            // MARK: TVOS Platform
            case .appleTV1_1, .appleTV2_1, .appleTV3_1, .appleTV3_2, .appleTV5_3:
                return "Apple TV"
            case .appleTV6_2, .appleTV11_1, .appleTV14_1:
                return "Apple TV 4K"

            // MARK: XROS Platform
            // MARK: Reality Device
            case .realityFamily22_1, .realityDevice14_1:
                return "Apple Vision Pro"
            }
        }
    }

    /// Get device name from model number
    ///
    /// - Returns: Device name (iPhone X , iPhoneXS ... etc)
    public static func getDeviceName () -> String {
        var size: Int = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0, count: Int(size))
        sysctlbyname("hw.machine", &machine, &size, nil, 0)
        let code: String = String(cString:machine)
    
        guard let deviceCode = DeviceCode(rawValue: code) else {
            return otherDeviceType(with: code)
        }

        return deviceCode.deviceName()
    }

    /// Return only unsupported model types
    /// - Parameter rawCode: device code
    /// - Returns: device type name
    private static func otherDeviceType(with rawCode: String) -> String {
        if rawCode.range(of: "iPod") != nil {
            return "iPod Touch (unknown)"
        } else if rawCode.range(of: "iPad") != nil {
            return "iPad (unknown)"
        } else if rawCode.range(of: "iPhone") != nil {
            return "iPhone (unknown)"
        } else if rawCode.range(of: "Watch") != nil {
            return "Apple Watch (unknown)"
        } else if rawCode.range(of: "MacFamily") != nil {
            return "Mac (unknown)"
        } else if rawCode.range(of: "Reality") != nil {
            return "Reality Device (unknown)"
        } else if rawCode.range(of: "AppleTV") != nil {
            return "AppleTV (unknown)"
        } else {
            return "Unknown device"
        }
    }

}
