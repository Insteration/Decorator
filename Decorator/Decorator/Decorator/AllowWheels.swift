//
//  AllowWheels.swift
//  Decorator
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation

class AllowWheels: MercedesDecorator {
    required init(decorator: MercedesProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + "premium wheels"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 1500
    }
}
