//
//  ViewController.swift
//  Pursuit-Core-iOS-Animations-Lab
//
//  Created by Mr Wonderful on 10/14/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var animationsStyle:String!
    @IBOutlet var customAnimateLabel: UIButton!
    @IBOutlet var squareView: UIView!
    @IBOutlet var durationSpeedLabel: UILabel!
    var duration:Double = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        animationsStyle = UserDefaultWrapper.shared.getAnimation()
        customAnimateLabel.titleLabel?.text = UserDefaultWrapper.shared.getAnimation()
    }
    
    private func customAnimation(){
        if self.squareView.backgroundColor == .blue {
            self.squareView.backgroundColor = .red
        } else {
            self.squareView.backgroundColor = .blue
        }
    }
    @IBAction func moveDownButtonPressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x , y: self.squareView.center.y + 30)
        }, completion: nil)
        
    }
    
    @IBAction func moveUpButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x , y: self.squareView.center.y - 30)
        }, completion: nil)
        
    }
    
    @IBAction func CustomAnimationButtonPressed(_ sender: UIButton) {
        switch UserDefaultWrapper.shared.getAnimation(){
        case "layoutSubviews":
            UIView.transition(with: squareView, duration: duration, options: [ .layoutSubviews], animations: {
                self.customAnimation()
            }, completion: nil)
        case "autoreverse":
            UIView.transition(with: squareView, duration: duration, options: [ .autoreverse], animations: {
               self.customAnimation()
            }, completion: nil)
        case "repeat":
            UIView.transition(with: squareView, duration: duration, options: [ .autoreverse, .repeat], animations: {
                self.customAnimation()
            }, completion: nil)
        case "curveEaseInOut":
            UIView.transition(with: squareView, duration: duration, options: [ .autoreverse], animations: {
                self.customAnimation()
            }, completion: nil)
        case "transitionFlipFromLeft":
            UIView.transition(with: squareView, duration: duration, options: [ .transitionFlipFromLeft], animations: {
                self.customAnimation()
            }, completion: nil)
        case "transitionFlipFromRight":
            UIView.transition(with: squareView, duration: duration, options: [ .transitionFlipFromRight], animations: {
                self.customAnimation()
            }, completion: nil)
        case "transitionCurlUp":
            UIView.transition(with: squareView, duration: duration, options: [ .transitionCurlUp], animations: {
                self.customAnimation()
            }, completion: nil)
        case "transitionCurlDown":
            UIView.transition(with: squareView, duration: duration, options: [ .transitionCurlDown], animations: {
                self.customAnimation()
            }, completion: nil)
        default:
            UIView.transition(with: squareView, duration: duration, options: [ .autoreverse], animations: {
                self.customAnimation()
            }, completion: nil)
        }
    }
    
    
    @IBAction func moveLeftButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x - 20, y: self.squareView.center.y )
        }, completion: nil)
    }
    
    @IBAction func moveRightButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.squareView.center = CGPoint(x: self.squareView.center.x + 20 , y: self.squareView.center.y)
        }, completion: nil)
    }
    
    @IBAction func stepperButtonPressed(_ sender: UIStepper) {
        duration = sender.value
        durationSpeedLabel.text = "Duration Time  \(sender.value.rounded(toPlaces: 2))"
    }
    
    @IBAction func settingsButtonPreesed(_ sender: Any) {
        
        let pickerVC = storyboard?.instantiateViewController(withIdentifier: "PickerViewController") as! PickerViewController
        present(pickerVC, animated: true, completion: nil)
    }
   
    
    
}

