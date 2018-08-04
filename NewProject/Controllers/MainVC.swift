//
//  MainVC.swift
//  NewProject
//
//  Created by Uladzislau Daratsiuk on 2018-08-04.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    lazy var pressMeButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Press Me ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.addTarget(self, action: #selector(handlePress), for: .touchUpInside)
        return button
    }()
    
    fileprivate func setupView(){
        view.addSubview(pressMeButton)
        
        pressMeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pressMeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pressMeButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        pressMeButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        pressMeButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    @objc fileprivate func handlePress(){
        let selectVC = UINavigationController(rootViewController: SelectNumberVC())
        selectVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        present(selectVC, animated: true, completion: nil)
    }

}
