//
//  MainVC.swift
//  NewProject
//
//  Created by Uladzislau Daratsiuk on 2018-08-04.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var numberObserver: NSObjectProtocol?
    
    lazy var pressMeButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Press Me ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.addTarget(self, action: #selector(handlePress), for: .touchUpInside)
        return button
    }()
    
    lazy var resultLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Here will be the number"
        return label
    }()
    
    fileprivate func setupView(){
        view.addSubview(pressMeButton)
        view.addSubview(resultLabel)
        
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resultLabel.bottomAnchor.constraint(equalTo: pressMeButton.topAnchor, constant: -100).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        resultLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        resultLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
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
        numberObserver = NotificationCenter.default.addObserver(forName: .selectedNumber, object: nil, queue: OperationQueue.main, using: { (notification) in
            let selectNumberVC = notification.object as! SelectNumberVC
            self.resultLabel.text = selectNumberVC.receivedNumber
        })
    }
    
    @objc fileprivate func handlePress(){
        let selectVC = UINavigationController(rootViewController: SelectNumberVC())
        selectVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        present(selectVC, animated: true, completion: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if let numberObserver = numberObserver{
            NotificationCenter.default.removeObserver(numberObserver)
        }
    }

}
