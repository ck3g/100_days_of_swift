//
//  ViewController.swift
//  AddPhoto
//
//  Created by Vitaly Tatarintsev on 13/11/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Outlets

    @IBOutlet weak var imageView: UIImageView!

    // MARK: - Interractions

    @IBAction func tapCameraButton(_ sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }

    // MARK: - When user selects Photo

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = selectedImage
        } else {
            print("Something went wrong")
        }
        dismiss(animated: true, completion: nil)
    }
}

