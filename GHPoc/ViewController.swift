//
//  ViewController.swift
//  GHPoc
//
//  Created by Equal Experts on 31/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class TaxCalculator {
    func calculateTax(for item: Item) -> Double {
        let tax = item.price * (item.category.rawValue / 100)
        return item.price + tax
    }
}

struct Item {
    let name: String
    let category: ItemCategory
    let price: Double
}

enum ItemCategory: Double {
    case books = 5.0
    case medicine = 0.0
    case cosmetics = 20.0
    case automotive = 15.5
}
