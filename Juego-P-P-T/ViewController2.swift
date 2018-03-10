//
//  ViewController2.swift
//  Juego-P-P-T
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//
import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        setupView()
    }
    
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    
    let comTextField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let playerTextField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let winnerTextField : UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    let returnButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.red
        button.setTitle("New Game", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleViewController), for: .touchUpInside)
        return button
    }()
    
    @objc func handleViewController(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        //add views
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(comTextField)
        inputContainerView.addSubview(playerTextField)
        inputContainerView.addSubview(winnerTextField)
        view.addSubview(returnButton)
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        comTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        comTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        comTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        comTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        playerTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        playerTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        playerTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        playerTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        winnerTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        winnerTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        winnerTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        winnerTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        returnButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        returnButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 15).isActive = true
        returnButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        returnButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
    }
}
