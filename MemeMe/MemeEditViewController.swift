//
//  MemeEditViewController.swift
//  MemeMe
//
//  Created by Jason on 12/9/17.
//  Copyright © 2017 Jason. All rights reserved.
//

import UIKit

class MemeEditViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imagePickerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var prefersStatusBarHidden: Bool {
        //Hide Status Bar
        return true
    }
    
    @IBAction func imageFromAlbum(_ sender: Any) {
        pickImage(.photoLibrary)
    }
    func pickImage(_ imageSource: UIImagePickerControllerSourceType){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = imageSource
        present(imagePicker, animated: true, completion: nil)
    }
}

