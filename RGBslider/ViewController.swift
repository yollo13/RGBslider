//
//  ViewController.swift
//  RGBslider
//
//  Created by YolloArts on 23.08.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var rgbView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    //MARK: - Life Cycles Metod
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = "0.00"
        greenLabel.text = "0.00"
        blueLabel.text = "0.00"
    }
    
    override func viewWillLayoutSubviews() {
        let sliderValueRed = CGFloat(redSlider.value)
        let sliderValueGreen = CGFloat(greenSlider.value)
        let sliderValueBlue = CGFloat(blueSlider.value)
        
        let currentColor = UIColor(red: sliderValueRed, green: sliderValueGreen, blue: sliderValueBlue, alpha: 1)
        rgbView.backgroundColor = currentColor
    }
    
    //MARK: - IB Actions
    @IBAction func redSliderAction()  {
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    
}


