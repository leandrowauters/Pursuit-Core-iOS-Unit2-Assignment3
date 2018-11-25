//
//  CategoryViewController.swift
//  Hangman
//
//  Created by Leandro Wauters on 11/24/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var categoryPicker: UIPickerView!
    @IBOutlet weak var chooseCategory: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = HangmanBrain.chosenBackgroundColor
        chooseCategory.textColor = HangmanBrain.chosenFontColor
        categoryPicker.delegate = self
        categoryPicker.delegate = self
    }
    


}
extension CategoryViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return Categories.categoryNames.count
}
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Categories.categoryIndex = row
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Categories.categoryNames[row]
    }
}