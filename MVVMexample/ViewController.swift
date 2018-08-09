//
//  ViewController.swift
//  MVVMexample
//
//  Created by tolga iskender on 9.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teamText: UITextField!
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  
    @IBAction func saveButton_click(_ sender: Any) {
        
        if nameText.text != "" && numberText.text != "" && teamText.text != "" {
            let viewModel = ModelView(name: nameText.text!, backNumber: Int(numberText.text!)!, team: teamText.text!)
            
            infoLabel.text = viewModel.teamInfo
            
            nameText.text = ""
            numberText.text = ""
            teamText.text = ""
            
        }
        else{
            let alertController = UIAlertController(title: "Alert", message: "Please Fill the Spaces", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel) {
                UIAlertAction in
                
            }
            alertController.addAction(cancelAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
}

