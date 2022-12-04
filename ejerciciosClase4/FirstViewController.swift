//
//  ViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 25/11/22.
//

import UIKit

class FirstViewController: UIViewController {
    
    struct Constant {
        static let existingEmail = "test@test.com"
        static let textExistingUser = "Correo Ya Existe"
        static let successfulRegistration = "Usuario Registrado Correctamente"
        static let failedPasswordValidation = "Contraseñas No Coinsiden"
        static let fillOutMail = "Diligenciar Correo"
        static let fillInPassword = "Diligenciar Contraseña"
        static let fillInPasswordConfirmation = "Diligenciar Confirmacion Contraseña"
        static let passwordAndConfirmationNotFilled = "Diligenciar Contraseña Y Confirmacion De Contraseña"
        static let fillInAllFields = "Diligenciar Campos De Color Rojo"
    }
    
    @IBOutlet weak var correoTextField: UITextField!
    @IBOutlet weak var contraseñaTextField: UITextField!
    @IBOutlet weak var confirmContraseñaTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var outletButtonCrear: UIButton!
    
    @IBAction func crearButtonAction(_ sender: UIButton) {
        validationEmailField()
        validationPasswordField()
        validationPasswordConfirmationFielt()
        validationOfPasswords()
        validationMailExisting()
        labelFieldvalidation()
    }
    
    func validationEmailField () {
        let emailTextEmpty = correoTextField.text == ""
        if emailTextEmpty {
            correoTextField.backgroundColor = .red
        }else {
            correoTextField.backgroundColor = .systemBackground
        }
    }
    
    func validationPasswordField () {
        let passwordTextEmpty = contraseñaTextField.text == ""
        if passwordTextEmpty {
            contraseñaTextField.backgroundColor = .red
        }else {
            contraseñaTextField.backgroundColor = .systemBackground
        }
    }
    
    func validationPasswordConfirmationFielt () {
        let passwordConfirmationTextEmpty = confirmContraseñaTextField.text == ""
        if passwordConfirmationTextEmpty {
            confirmContraseñaTextField.backgroundColor = .red
        }else {
            confirmContraseñaTextField.backgroundColor = .systemBackground
        }
    }
    
    func validationOfPasswords () {
        let password = contraseñaTextField.text ?? ""
        let passwordConfirmation = confirmContraseñaTextField.text ?? ""
        
        if password == "" && passwordConfirmation == "" {
            resultadoLabel.text = Constant.passwordAndConfirmationNotFilled
        }else if password == passwordConfirmation {
            resultadoLabel.text = Constant.successfulRegistration
        }else {
            resultadoLabel.text = Constant.failedPasswordValidation
        }
    }
    
    func validationMailExisting () {
        let email = correoTextField.text ?? ""
        if email == Constant.existingEmail {
            resultadoLabel.text = Constant.textExistingUser
        }
    }
    
    func labelFieldvalidation () {
        if correoTextField.text == "" && contraseñaTextField.text == "" && confirmContraseñaTextField.text == ""{
            resultadoLabel.text = Constant.fillInAllFields
        }else if correoTextField.text == "" {
            resultadoLabel.text = Constant.fillOutMail
        }else if contraseñaTextField.text == "" {
            resultadoLabel.text = Constant.fillInPassword
        }else if confirmContraseñaTextField.text == "" {
            resultadoLabel.text = Constant.fillInPasswordConfirmation
        }
    }
}

