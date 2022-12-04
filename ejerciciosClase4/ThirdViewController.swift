//
//  ThirdViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 28/11/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textFieldCelciusAFahrenheit: UITextField!
    @IBOutlet weak var textFieldFahrenheitACelcius: UITextField!
    @IBOutlet weak var labelResultFahrenheit: UILabel!
    @IBOutlet weak var labelResultCelcius: UILabel!
    
    lazy var convertirCelcius = Double(textFieldCelciusAFahrenheit.text ?? "")
    lazy var convertirFahrenheit = Double(textFieldFahrenheitACelcius.text ?? "")
    
    @IBAction func convetirAFahrenheitAction(_ sender: UIButton) {
        dataConvertingToFahrenheit()
        presentConvertingToFahrenheit()
    }
    @IBAction func convertirACelciusAction(_ sender: UIButton) {
        dataConvertingToCelcius()
        presentConvertingToCelcius()
    }
    
    func dataConvertingToFahrenheit () {
        convertirCelcius = (convertirCelcius! * 9 ) / 5 + 32
    }
    
    func presentConvertingToFahrenheit () {
        labelResultFahrenheit.text = "\(convertirCelcius!)"
    }
    
    func dataConvertingToCelcius () {
        convertirFahrenheit = (convertirFahrenheit! - 32 ) * 5 / 9
    }
    
    func presentConvertingToCelcius () {
        labelResultCelcius.text = "\(convertirFahrenheit!)"
    }
}
