//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mohammad Agung on 25/12/18.
//  Copyright © 2018 Mohammad Agung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBall: Int = 0
    
    @IBOutlet weak var magicBall: UIImageView!
    
    func updateBall() {
        randomBall = Int.random(in: 0 ... 4)
        
        magicBall.image = UIImage(named: ballArray[randomBall])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBall()
    }

    @IBAction func askButton(_ sender: Any) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
}

