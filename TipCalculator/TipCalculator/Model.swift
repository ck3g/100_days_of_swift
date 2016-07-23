//
//  Model.swift
//  TipCalculator
//
//  Created by Vitaly Tatarintsev on 23/07/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

let model = Model(subtotal: 0, tipPercent: 15)

class Model: NSObject {
    var subtotal: Double
    var tipPercent: Int
    var tipAmount: Double {
        return subtotal * Double(tipPercent) / 100.0
    }
    var total: Double {
        return subtotal + tipAmount
    }

    var subtotalAsCurrency: String {
        return "\(String(format: "%0.2f", subtotal))€"
    }
    var tipAmountAsCurrency: String {
        return "\(String(format: "%0.2f", tipAmount))€"
    }
    var totalAsCurrency: String {
        return "\(String(format: "%0.2f", total))€"
    }

    init(subtotal: Double, tipPercent: Int) {
        self.subtotal = subtotal
        self.tipPercent = tipPercent
    }
}
