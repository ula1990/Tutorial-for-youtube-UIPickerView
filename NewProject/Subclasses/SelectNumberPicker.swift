//
//  SelectNumberPicker.swift
//  NewProject
//
//  Created by Uladzislau Daratsiuk on 2018-08-04.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class SelectNumberPicker: UIPickerView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        self.layer.masksToBounds = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
