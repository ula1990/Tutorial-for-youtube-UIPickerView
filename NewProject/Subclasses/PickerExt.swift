//
//  PickerExt.swift
//  NewProject
//
//  Created by Uladzislau Daratsiuk on 2018-08-04.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import Foundation
import UIKit

extension SelectNumberVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfNumbers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayOfNumbers[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        NotificationCenter.default.post(name: .selectedNumber, object: self)
        receivedNumber = arrayOfNumbers[row]
        print(arrayOfNumbers[row])
    }
    
}
