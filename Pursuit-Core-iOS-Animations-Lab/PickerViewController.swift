//
//  PickerViewController.swift
//  Pursuit-Core-iOS-Animations-Lab
//
//  Created by Mr Wonderful on 10/14/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController {
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationPicker: UIPickerView!
    var animations = Animations.picker
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationPicker.delegate = self
        animationPicker.dataSource = self
    }
    
    @IBAction func enterButtonPressed(_ sender: UIButton) {
        UserDefaultWrapper.shared.store(currentMode: animationLabel.text!)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
extension PickerViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animations.count
    }
    
}

extension PickerViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        guard let VC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {return}
        animationLabel.text = animations[row]
    }
}
