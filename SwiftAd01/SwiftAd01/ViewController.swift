//
//  ViewController.swift
//  SwiftAd01
//
//  Created by Vitaly Tatarintsev on 23/07/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        self.adBannerView.delegate = self
        self.adBannerView.hidden = true
    }

    @IBOutlet weak var adBannerView: ADBannerView!

    // MARK: - ADBanner Actions

    func bannerViewDidLoadAd(banner: ADBannerView!) {
        adBannerView.hidden = false
        print("Success!")
    }

    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        adBannerView.hidden = true
        print("Error:")
        print(error)
    }
}

