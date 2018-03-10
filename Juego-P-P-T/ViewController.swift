//
//  ViewController.swift
//  Juego-P-P-T
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //se crean las variables
    var rock = 0
    var paper = 1
    var scissors = 2
    //var _Com : UIImage?
    var Com : String?
    //var _Player : UIImage?
    var Player : String?
    var Winner : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Se crea el boton de papel, con sus caracteristicas
    let paperButtom : UIButton = {
        let button = UIButton(type: .system)
        //button.setImage(#imageLiteral(resourceName: "Papel"), for: .normal)
        button.backgroundColor = UIColor.blue
        button.setTitle("Papel", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(RP), for: .touchUpInside)
        return button
    } ()
    
    //Se crea el boton de piedra, con sus caracteristicas
    let rockButtom : UIButton = {
        let button = UIButton(type: .system)
        //button.setImage(#imageLiteral(resourceName: "Piedra"), for: .normal)
        button.backgroundColor = UIColor.red
        button.setTitle("Piedra", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(RR), for: .touchUpInside)
        return button
    } ()
    
    //Se crea el boton de tijeras, con sus caracteristicas
    let scissorsButtom : UIButton = {
        let button = UIButton(type: .system)
        //button.setImage(#imageLiteral(resourceName: "Tijeras"), for: .normal)
        button.backgroundColor = UIColor.green
        button.setTitle("Tijeras", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(RS), for: .touchUpInside)
        return button
    } ()
    
    //funcion para generar la eleccion del sistema (VS) y arrojar resultado seleccionando papel
    @objc func RP(){
        let Random = arc4random_uniform(3)
        if Random == UInt32(rock){
            Com = "Piedra"
            //_Com = #imageLiteral(resourceName: "Piedra")
            Player = "Papel"
            //_Player = #imageLiteral(resourceName: "Papel")
            Winner = "Ganaste"
        }
        else if Random == UInt32(paper){
            Com = "Papel"
            //_Com = #imageLiteral(resourceName: "Papel")
            Player = "Papel"
            //_Player = #imageLiteral(resourceName: "Papel")
            Winner = "Empate"
        }
        else if Random == UInt32(scissors){
            Com = "Tijeras"
            //_Com = #imageLiteral(resourceName: "Tijeras")
            Player = "Papel"
            //_Player = #imageLiteral(resourceName: "Papel")
            Winner = "Perdiste"
        }
        Result()
    }
    
    //funcion para generar la eleccion del sistema (VS) y arrojar resultado seleccionando Piedra
    @objc func RR(){
        let Random = arc4random_uniform(3)
        if Random == UInt32(rock){
            Com = "Piedra"
            //_Com = #imageLiteral(resourceName: "Piedra")
            Player = "Piedra"
            //_Player = #imageLiteral(resourceName: "Piedra")
            Winner = "Empate"
        }
        else if Random == UInt32(paper){
            Com = "Papel"
            //_Com = #imageLiteral(resourceName: "Papel")
            Player = "Piedra"
            //_Player = #imageLiteral(resourceName: "Piedra")
            Winner = "Perdiste"
        }
        else if Random == UInt32(scissors){
            Com = "Tijeras"
            //_Com = #imageLiteral(resourceName: "Tijeras")
            Player = "Piedra"
            //_Player = #imageLiteral(resourceName: "Piedra")
            Winner = "Ganaste"
        }
        Result()
    }
    
    //funcion para generar la eleccion del sistema (VS) y arrojar resultado seleccionando tijeras
    @objc func RS(){
        let Random = arc4random_uniform(3)
        if Random == UInt32(rock){
            Com = "Piedra"
            //_Com = #imageLiteral(resourceName: "Piedra")
            Player = "Tijeras"
            //_Player = #imageLiteral(resourceName: "Tijeras")
            Winner = "Perdiste"
        }
        else if Random == UInt32(paper){
            Com = "Papel"
            //_Com = #imageLiteral(resourceName: "Papel")
            Player = "Tijeras"
            //_Player = #imageLiteral(resourceName: "Tijeras")
            Winner = "Ganaste"
        }
        else if Random == UInt32(scissors){
            Com = "Tijeras"
            //_Com = #imageLiteral(resourceName: "Tijeras")
            Player = "Tijeras"
            //_Player = #imageLiteral(resourceName: "Tijeras")
            Winner = "Empate"
        }
        Result()
    }
    
    //vistas de los botones
    func setupViews(){
        //add views
        view.addSubview(paperButtom)
        view.addSubview(rockButtom)
        view.addSubview(scissorsButtom)
        
        //Caracteristicas del boton papel
        paperButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        paperButtom.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        paperButtom.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -350).isActive = true
        paperButtom.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        //Caracteristicas del boton piedra
        rockButtom.topAnchor.constraint(equalTo: paperButtom.bottomAnchor, constant:10).isActive = true
        rockButtom.widthAnchor.constraint(equalTo: paperButtom.widthAnchor).isActive = true
        rockButtom.leftAnchor.constraint(equalTo: paperButtom.leftAnchor).isActive = true
        rockButtom.heightAnchor.constraint(equalTo: paperButtom.heightAnchor).isActive = true
        
        //Caracteristicas del boton tijera
        scissorsButtom.topAnchor.constraint(equalTo: rockButtom.bottomAnchor, constant:10).isActive = true
        scissorsButtom.widthAnchor.constraint(equalTo: rockButtom.widthAnchor).isActive = true
        scissorsButtom.leftAnchor.constraint(equalTo: rockButtom.leftAnchor).isActive = true
        scissorsButtom.heightAnchor.constraint(equalTo: rockButtom.heightAnchor).isActive = true
    }
    
    
    //instancea y proyecta la vista de resultado (viewController2)
    /*func Result(){
     var viewController2: ViewController2 = ViewController2()
     viewController2.comTextField.text = "Com" + Com!
     viewController2.playerTextField.text = "Player" + Player!
     viewController2.winnerTextField.text = Winner!
     present(viewController2, animated: true, completion: nil)
     
     }*/
    func Result(){
        let viewController2: ViewController2 = ViewController2()
        viewController2.comTextField.text = "Com" + Com!
        viewController2.playerTextField.text = "Player" + Player!
        viewController2.winnerTextField.text = Winner!
        present(viewController2, animated: true, completion: nil)
    }
}
