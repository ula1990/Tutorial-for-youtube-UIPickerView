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
    var receivedNumber: String?
    
    lazy var dismissButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Dismiss Me ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.addTarget(self, action: #selector(handlePress), for: .touchUpInside)
        button.backgroundColor = .white
        return button
    }()
    
    @objc fileprivate func handlePress(){
        dismiss(animated: true, completion: nil)
    }
    
    fileprivate func setupView(){
        view.addSubview(containerViewPicker)
        view.addSubview(dismissButton)
        containerViewPicker.addSubview(picker)
        
        containerViewPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerViewPicker.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerViewPicker.heightAnchor.constraint(equalToConstant: 200).isActive = true
        containerViewPicker.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        dismissButton.topAnchor.constraint(equalTo: containerViewPicker.bottomAnchor, constant: 10).isActive = true
        dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dismissButton.leftAnchor.constraint(equalTo: containerViewPicker.leftAnchor).isActive = true
        dismissButton.rightAnchor.constraint(equalTo: containerViewPicker.rightAnchor).isActive = true
        dismissButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
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
