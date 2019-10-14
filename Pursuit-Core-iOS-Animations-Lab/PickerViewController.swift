//
//  PickerViewController.swift
//  Pursuit-Core-iOS-Animations-Lab
//
//  Created by Mr Wonderful on 10/14/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationPicker: UIPickerView!
    var animations = Animations.picker
  
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        animationLabel.text = animations[row]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationPicker.delegate = self
        animationPicker.dataSource = self
    }
    

}
