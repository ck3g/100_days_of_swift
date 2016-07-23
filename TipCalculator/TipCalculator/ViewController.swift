//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vitaly Tatarintsev on 23/07/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextField.becomeFirstResponder()
        createToolbar()
    }

    // MARK: - Outlets
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    // MARK: - Interractions
    @IBAction func dragTipSlider(sender: UISlider) {
        updateModelAndLabels()
    }

    // MARK: - Functions
    func updateModelAndLabels() {
        model.tipPercent = Int(tipSlider.value)
        tipPercentLabel.text = "Tip (\(model.tipPercent)%):"
        tipAmountLabel.text = model.tipAmountAsCurrency
        totalLabel.text = model.totalAsCurrency
    }

    func dismissKeyboard() {
        subtotalTextField.resignFirstResponder()

        if subtotalTextField.text?.characters.count == 0 {
            model.subtotal = 0
        } else {
            model.subtotal = Double(subtotalTextField.text!)!
        }

        subtotalTextField.text = model.subtotalAsCurrency
        updateModelAndLabels()
    }

    func createToolbar() {
        // create toolbar
        let toolbar = UIToolbar()
        toolbar.barStyle = .Default
        toolbar.sizeToFit()

        // create button
        let doneButton = UIBarButtonItem(
            title: "Done",
            style: .Done,
            target: self,
            action: #selector(ViewController.dismissKeyboard))

        // create flexible space
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace,
            target: nil,
            action: nil)

        // add button to toolbar
        toolbar.setItems([flexibleSpace, doneButton], animated: true)

        // attach to the keyboard
        subtotalTextField.inputAccessoryView = toolbar
    }
}

