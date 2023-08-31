//
//  GHPocTests.swift
//  GHPocTests
//
//  Created by Equal Experts on 31/08/23.
//

import XCTest
@testable import GHPoc

final class GHPocTests: XCTestCase {

    func testCalculateTaxOnBooks() {
        let calc = TaxCalculator()
        let totalPrice = calc.calculateTax(for: .init(name: "Lord of Rings", category: .books, price: 150))
        XCTAssertEqual(totalPrice, 157.5)
    }
    
    func testCalculateTaxOnMedicines() {
        let calc = TaxCalculator()
        let totalPrice = calc.calculateTax(for: .init(name: "Dolo 650", category: .medicine, price: 1.50))
        XCTAssertEqual(totalPrice, 1.5)
    }
    
    func testCalculateTaxOnMakeup() {
        let calc = TaxCalculator()
        let totalPrice = calc.calculateTax(for: .init(name: "Sugar", category: .cosmetics, price: 220))
        XCTAssertEqual(totalPrice, 264)
    }

}
