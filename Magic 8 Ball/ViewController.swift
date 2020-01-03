//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mohammad Agung on 25/12/18.
//  Copyright © 2018 Mohammad Agung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    swift 4
//    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
//    swift 5
    let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    var randomBall: Int = 0
    
    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBall()
    }
    
    func updateBall() {
        randomBall = Int.random(in: 0 ... 4)

//        swift 4
//        magicBall.image = UIImage(named: ballArray[randomBall])
        
//        swift 5
        magicBall.image = ballArray[randomBall]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }

    @IBAction func askButton(_ sender: Any) {
        updateBall()
    }
}

