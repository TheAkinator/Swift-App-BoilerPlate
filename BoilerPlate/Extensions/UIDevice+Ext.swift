//
//  UIDeviceExtension.swift
//  Sol Coletivo
//
//  Created by Yuri Frota on 01/03/18.
//  Copyright © 2018 solColetivo. All rights reserved.
//

import UIKit

extension UIDevice {
    enum Device {
        case iPhoneX
        case iPhoneSE
        case iPhonePlus
        case iPhoneStandart
        case iPad
        case unknow
    }
    
    static func deviceModel() -> Device {
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 1136:
                return .iPhoneSE
            case 1334:
                return .iPhoneStandart
            case 2208:
                return .iPhonePlus
            case 2436:
                return .iPhoneX
            default:
                return .unknow
            }
        } else {
            return .iPad
        }
    }
}
