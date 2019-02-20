//
//  ViewController.swift
//  SeeFud
//
//  Created by Prince Sonnenberg on 2019/02/20.
//  Copyright © 2019 Prince Sonnenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    
    @IBOutlet weak var imageView: UIImageView!
    
   
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {

            imageView.image = image
            imagePicker.dismiss(animated: true, completion: nil)

        } else {

            print("there was an error picking an image")
        }
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.sourceType = .savedPhotosAlbum
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        <#code#>
    }
}

