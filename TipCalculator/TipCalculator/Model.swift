//
//  Model.swift
//  TipCalculator
//
//  Created by Vitaly Tatarintsev on 23/07/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

let model = Model(subtotal: 0, tip: 15)

class Model: NSObject {
    var subtotal: Double
    var tip: Int

    var subtotalAsCurrency: String {
        get {
            return "\(String(format: "%0.2f", subtotal))€"
        }
    }

    init(subtotal: Double, tip: Int) {
        self.subtotal = subtotal
        self.tip = tip
    }
}
