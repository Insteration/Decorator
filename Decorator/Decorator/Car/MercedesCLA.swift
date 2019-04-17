//
//  MercedesCLA.swift
//  Decorator
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation

class MercedesCLA: MercedesProtocol {
    func getTitle() -> String {
        return "Mercedes CLA"
    }
    
    func getPrice() -> Double {
        return 12000
    }
    
}
