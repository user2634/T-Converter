//
//  ViewController.swift
//  TConverter
//
//  Created by Dava on 24.07.2020.
//  Copyright © 2020 David Dahina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLable: UILabel!
    @IBOutlet weak var fahrenheitLable: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.minimumValue = -150
            slider.maximumValue = 150
            slider.value = 0
        }
    }
    
    
    
    @IBAction func sliderAction(_ sender: Any) {
        let temp = slider.value * 9/5
        cenliusLable.text = String(Int(slider.value)) + "ºC"
        fahrenheitLable.text = String(Int(temp + 32)) + "ºF"
    }
}

