//
//  ViewControllerOne.swift
//  iOS4TestGit
//
//  Created by Zorin Dmitrii on 13.02.2022.
//

import UIKit

class ViewControllerOne: UIViewController {
    let labelOne = UILabel()
    let buttonOne = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
}
    
    
    extension ViewControllerOne {
        
        private func setupSubviews() {
            view.backgroundColor = .white
            view.addSubview(labelOne)
            view.addSubview(buttonOne)
            
            labelOne.text = "LabelOne"
            labelOne.translatesAutoresizingMaskIntoConstraints = false
            labelOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            labelOne.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            
            buttonOne.setTitle("ButtonOne", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.backgroundColor = .systemBlue
            buttonOne.layer.cornerRadius = 10
            buttonOne.addTarget(self, action: #selector(tapbutton), for: .touchDown)
            buttonOne.translatesAutoresizingMaskIntoConstraints = false
            buttonOne.centerXAnchor.constraint(equalTo: labelOne.centerXAnchor).isActive = true
            buttonOne.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40).isActive = true
            
        }
        
        @objc func tapbutton() {
            buttonOne.setTitleColor(.systemMint, for: .normal)
        }
        
    }
    



