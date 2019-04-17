//
//  PanoramicRoof.swift
//  Decorator
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation

class PanoramicRoof: MercedesDecorator {
    required init(decorator: MercedesProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + "premium roof"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 2000
    }
}
