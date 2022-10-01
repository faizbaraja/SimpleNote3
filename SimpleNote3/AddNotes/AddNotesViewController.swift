//
//  AddNotesViewController.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

class AddNotesViewController: UIViewController {
    @IBOutlet var textFieldTitle: UITextField!
    @IBOutlet var buttonCategorySelector: UIButton!
    @IBOutlet var textFieldDesc: UITextField!
    let viewModel = AddNotesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add Notes"
        // Do any additional setup after loading the view.
    }

    @IBAction func actionSaveNote(_ sender: Any) {
        viewModel.saveNote(noteTitle: textFieldTitle.text,
                           noteCategory: buttonCategorySelector.currentTitle,
                           noteDescription: textFieldDesc.text) { () -> () in
            print("saved")
        }
    }
    
}
