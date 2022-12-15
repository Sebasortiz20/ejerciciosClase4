//
//  SecondViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 26/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    struct Constant{
        static let enterValueToCalculate = "ingrese valor"
        static let characterDegreesFahrenheit = "\u{2109}"
    }
    
    var resultado: String?
    
    @IBAction func convertirCelciusAFahrenheit(_ sender: UIButton) {
        convertFahrenheitToCelsius()
        pintarResultado()
    }
    
    func pintarResultado() {
        labelResultado.text = resultado
    }
    
    func convertFahrenheitToCelsius() {
        if let fahrenheitTemperature = Double(textLabel.text!) {
            resultado = "\((fahrenheitTemperature - 32 ) * 5 / 9) \(Constant.characterDegreesFahrenheit)"
        } else {
            resultado = Constant.enterValueToCalculate
        }
    }
}
