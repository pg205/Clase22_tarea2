//
//  ViewController.swift
//  tarea2
//
//  Created by villeguillo on 19/10/15.
//  Copyright © 2015 villeguillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var you: UIImageView!
    
    @IBOutlet weak var rival: UIImageView!
    
    @IBOutlet weak var result: UILabel!
    
    func rivalOpption(){
        
        var generator = Int(random())
        
        if generator % 2 == 0 {
            
            generator = Int(random())
            
            if generator % 2 == 0 {
        
                rival.image = UIImage(named: "tijeras.png")
            }
            
            else {
                
                rival.image = UIImage(named: "papel.jpg")
            }
        }
        
        else {
            
            rival.image = UIImage(named: "piedra.jpg")
        }
    }
    
    
    @IBAction func button1() {
        
        you.image = UIImage(named: "piedra.jpg")
        
        rivalOpption()
        
        if rival.image == UIImage(named: "piedra.jpg") {
            
            result.text = "Continue"
        }
        
        if rival.image == UIImage(named: "papel.jpg") {
            
            result.text = "Lose"
        }
        
        if rival.image == UIImage(named: "tijeras.png") {
            
            result.text = "Win"
        }
        
        
        //result.text = "acaba boton 1"
        
    }
    
    
    @IBAction func button2() {
        
        you.image = UIImage(named: "papel.jpg")
        
        rivalOpption()
        
        if  rival.image == UIImage(named: "papel.jpg") {
            
            result.text = "Continue"
        }
        
        if rival.image == UIImage(named: "tijeras.png") {
            
            result.text = "Lose"
        }
        
        if rival.image == UIImage(named: "piedra.jpg") {
            
            result.text = "Win"
        }
        
        //result.text = "acaba boton 2"
    }

    @IBAction func button3() {
        
        you.image = UIImage(named: "tijeras.png")
        
        rivalOpption()
        
        if rival.image ==  UIImage(named: "tijeras.png") {
            
            result.text = "Continue"
        }
        
        if rival.image == UIImage(named: "piedra.jpg") {
            
            result.text = "Lose"
        }
        
        if rival.image ==  UIImage(named: "papel.jpg") {
            
            result.text = "Win"
        }
        
        //result.text = "acaba boton 3"
    }

}

