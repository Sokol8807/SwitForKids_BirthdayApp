//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Ilya Sokolov on 05.06.2022.
//

import UIKit

class AddBirthdayViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdatePicker.maximumDate = Date()
    
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        
        let birthdate = birthdatePicker.date
        
        let newBirthday = Birhday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
        print("Cоздана новая запись о ДР")
        print("Имя: \(newBirthday.firstName)")
        print("Фамилия: \(newBirthday.lastName)")
        print("День рождения: \(birthdate)")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true)
        
        
        print("Нажата кнопка выхода")
    }
    
    
}

