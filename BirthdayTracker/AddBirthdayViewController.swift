//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Ilya Sokolov on 05.06.2022.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    
    func addBirthdayViewController(_ AddBirthdayViewController: AddBirthdayViewController, didAddBirthdaybirthday: Birthday)
    
}

class AddBirthdayViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    
    var delegate: AddBirthdayViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdatePicker.maximumDate = Date()
    
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        
        let birthdate = birthdatePicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
  
        
        delegate?.addBirthdayViewController(self, didAddBirthdaybirthday: newBirthday)
        
        dismiss(animated: true, completion: nil)
        
        
//        print("Cоздана новая запись о ДР")
//        print("Имя: \(newBirthday.firstName)")
//        print("Фамилия: \(newBirthday.lastName)")
//        print("День рождения: \(birthdate)")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true)
        
        
        print("Нажата кнопка выхода")
    }
    
    
}

