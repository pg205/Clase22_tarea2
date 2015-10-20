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
    
    @IBOutlet weak var wins: UILabel!
    
    @IBOutlet weak var defeats: UILabel!
    
    var countWins = 0
    
    var countDefeats = 0
    
    
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
            
            generator = Int(random())
            
            if generator % 2 == 0 {
                
                rival.image = UIImage(named: "piedra.jpg")
            }
                
            else {
                
                rival.image = UIImage(named: "papel.jpg")
            }
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
            
            countDefeats++
            
            defeats.text = "Defeats: \(countDefeats)"
        }
        
        if rival.image == UIImage(named: "tijeras.png") {
            
            result.text = "Win"
            
            countWins++
            
            wins.text = "Wins: \(countWins)"
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
            
            countDefeats++
            
            defeats.text = "Defeats: \(countDefeats)"
        }
        
        if rival.image == UIImage(named: "piedra.jpg") {
            
            result.text = "Win"
            
            countWins++
            
            wins.text = "Wins: \(countWins)"
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
            
            countDefeats++
            
            defeats.text = "Defeats: \(countDefeats)"
        }
        
        if rival.image ==  UIImage(named: "papel.jpg") {
            
            result.text = "Win"
            
            countWins++
            
            wins.text = "Wins: \(countWins)"
        }
        
        //result.text = "acaba boton 3"
    }

}

