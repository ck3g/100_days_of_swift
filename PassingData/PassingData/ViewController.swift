//
//  ViewController.swift
//  PassingData
//
//  Created by Vitaly Tatarintsev on 24/07/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        firstViewTextField.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var firstViewTextField: UITextView!

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        savedMessage = firstViewTextField.text
    }

}

