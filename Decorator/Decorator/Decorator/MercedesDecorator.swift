//
//  MercedesDecorator.swift
//  Decorator
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation

class MercedesDecorator: MercedesProtocol {
    
    private let decoratorType: MercedesProtocol
    
    // в инит будет передавать любой объект который следует этому протоколу (все любые объекты которые связаны с мерседесом)
    required init(decorator: MercedesProtocol) {
        self.decoratorType = decorator
    }
    
    func getTitle() -> String {
        return decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        return decoratorType.getPrice()
    }
    
    
}
