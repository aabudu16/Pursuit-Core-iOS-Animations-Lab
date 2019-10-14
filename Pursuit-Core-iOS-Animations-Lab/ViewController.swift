//
//  ViewController.swift
//  Pursuit-Core-iOS-Animations-Lab
//
//  Created by Mr Wonderful on 10/14/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var squareView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func moveDownButtonPressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.2, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x , y: self.squareView.center.y + 30)
        }, completion: nil)
        
    }
    
    @IBAction func moveUpButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1.2, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x , y: self.squareView.center.y - 30)
        }, completion: nil)
        
    }
    
    @IBAction func moveLeftButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1.2, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x - 20, y: self.squareView.center.y )
        }, completion: nil)
    }
    
    @IBAction func moveRightButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1.2, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x + 20 , y: self.squareView.center.y)
        }, completion: nil)
    }
    
}

