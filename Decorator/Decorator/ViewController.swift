//
//  ViewController.swift
//  Decorator
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Декоратор - структурный паттерн проектирования, который позволяет динамически добавлять объектам новую функциональность, оборачивая их в обертки

    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = String(mercedes.getPrice()) + "$"
        }
    }
    
    @IBOutlet weak var comentLabel: UILabel!
    
    var mercedes: MercedesProtocol = MercedesCLA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func menuCarSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = MercedesCLA()
            priceLabel.text = String(mercedes.getPrice()) + "$"
            comentLabel.text = mercedes.getTitle()
        case 1:
            mercedes = MercedesCLA()
            mercedes = AllowWheels(decorator: mercedes)
            priceLabel.text = String(mercedes.getPrice()) + "$"
            comentLabel.text = mercedes.getTitle()
        case 2:
            mercedes = MercedesCLA()
            mercedes = PanoramicRoof(decorator: mercedes)
            priceLabel.text = String(mercedes.getPrice()) + "$"
            comentLabel.text = mercedes.getTitle()
        default:
            ()
        }
    }
    
}

