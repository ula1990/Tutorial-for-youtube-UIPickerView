//
//  SelectNumberVC.swift
//  NewProject
//
//  Created by Uladzislau Daratsiuk on 2018-08-04.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class SelectNumberVC: UIViewController {
    
    var arrayOfNumbers = ["1","2", "3","45","56","67","67","8","3","3","3","3","786",]
    let containerViewPicker = ContainerView()
    let picker = SelectNumberPicker()
    
    fileprivate func setupView(){
        view.addSubview(containerViewPicker)
        containerViewPicker.addSubview(picker)
        
        containerViewPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerViewPicker.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerViewPicker.heightAnchor.constraint(equalToConstant: 200).isActive = true
        containerViewPicker.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        picker.centerXAnchor.constraint(equalTo: containerViewPicker.centerXAnchor).isActive = true
        picker.topAnchor.constraint(equalTo: containerViewPicker.topAnchor).isActive = true
        picker.leftAnchor.constraint(equalTo: containerViewPicker.leftAnchor).isActive = true
        picker.rightAnchor.constraint(equalTo: containerViewPicker.rightAnchor).isActive = true
        picker.bottomAnchor.constraint(equalTo: containerViewPicker.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        picker.delegate = self
        picker.dataSource = self
        setupView()
    }
}
