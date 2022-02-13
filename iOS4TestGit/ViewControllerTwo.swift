//
//  ViewControllerTwo.swift
//  iOS4TestGit
//
//  Created by Ivan Zakharchenko on 13/02/2022.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    let labelTwo = UILabel()
    let buttonTwo = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(labelTwo)
        view.addSubview(buttonTwo)
        setupSubviews()
    }
}

extension ViewControllerTwo {
    
    func setupSubviews() {
        view.backgroundColor = .gray
        
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.text = "labelTwo"
        labelTwo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        labelTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 250).isActive = true
        
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.setTitle("buttonTwo", for: .normal)
        buttonTwo.topAnchor.constraint(equalTo: labelTwo.bottomAnchor, constant: 40).isActive = true
        buttonTwo.addTarget(self, action: #selector(pressButtonTwo), for: .touchUpInside)
        
    }
        @objc func pressButtonTwo() {
            labelTwo.text = "buttonTwo was pressed"
    }
}
