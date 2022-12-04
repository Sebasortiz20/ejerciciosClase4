//
//  FourthViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 2/12/22.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var animalsTextField: UITextField!
    @IBOutlet weak var animalsImage: UIImageView!
    @IBOutlet weak var searchAnimalOutlet: UIButton!
    
    var animalsName = ["perro", "gato", "leon"]
    
    @IBAction func searchAnimalAction(_ sender: UIButton) {
        validateImageName()
    }
    
    func validateImageName () {
        let expectedName = animalsTextField.text
        if expectedName == animalsName [0] {
            animalsImage.image = UIImage(named: "imagePerro")
        }else if expectedName == animalsName [1] {
            animalsImage.image = UIImage(named: "imageGato")
        }else if expectedName == animalsName [2] {
            animalsImage.image = UIImage(named: "imageLeon")
        }else {
            animalsImage.image = UIImage(named: "imageNoEncontrado")
        }
    }
}
