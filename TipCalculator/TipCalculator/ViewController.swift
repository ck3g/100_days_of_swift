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

    // MARK: - Functions
    func dismissKeyboard() {
        subtotalTextField.resignFirstResponder()

        if subtotalTextField.text?.characters.count == 0 {
            subtotalTextField.text = "0.00"
        }

        model.subtotal = Double(subtotalTextField.text!)!
        subtotalTextField.text = model.subtotalAsCurrency
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

