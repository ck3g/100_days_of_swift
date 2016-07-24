//
//  SecondViewController.swift
//  PassingData
//
//  Created by Vitaly Tatarintsev on 24/07/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

var savedMessage: String?

class SecondViewController: UIViewController {
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        sentMessageLabel.text = savedMessage
    }

    // MARK: - Outlets
    @IBOutlet weak var sentMessageLabel: UILabel!

}
