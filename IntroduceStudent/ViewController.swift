//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Camila on 7/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Text Fields
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var dreamJobTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    // Grab all user details
    @IBAction func introduceDidTap(_ sender: UIButton) {
        // Grab current year
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Create Introduction string with all details
        let introduction = """
                I am \(firstNameTextField.text!) \(lastNameTextField.text!) 
                and I attend \(schoolNameTextField.text!).
                I am currently in my \(year!) year and 
                I aspire to be a \(dreamJobTextField.text!).
                I own \(numberOfPetsLabel.text!) dog(s).
                It is \(morePetsSwitch.isOn) that I want more pets.
            """
        
        // Creates the alert and pass introduction
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // Allow to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
}

