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
        
        rgbView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
//        redLabel.text = string(from: redSlider)
//        greenLabel.text = string(from: greenSlider)
//        blueLabel.text = string(from: blueSlider)
        
        setValue(for: redSlider, greenSlider, blueSlider)
        setColor()
    }
    
//    override func viewWillLayoutSubviews() {
//        let sliderValueRed = CGFloat(redSlider.value)
//        let sliderValueGreen = CGFloat(greenSlider.value)
//        let sliderValueBlue = CGFloat(blueSlider.value)
//
//        let currentColor = UIColor(red: sliderValueRed, green: sliderValueGreen, blue: sliderValueBlue, alpha: 1)
//        rgbView.backgroundColor = currentColor
//    }
    
    //MARK: - IB Actions
    
    @IBAction func rgbSlider(_ sender: UISlider) {
//        redLabel.text = string(from: redSlider)
//        greenLabel.text = string(from: greenSlider)
//        blueLabel.text = string(from: blueSlider)
        switch  sender.tag {
        case 0 : redLabel.text = string(from: sender)
        case 1 : greenLabel.text = string(from: sender)
        case 2 : blueLabel.text = string(from: sender)
        default:
            break
        }
        setColor()
    }
    
    private func setColor() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    private func setValue(for labels: UISlider...) {
        labels.forEach {label in
            switch label.tag {
            case 0 : redLabel.text = string(from: redSlider)
            case 1 : greenLabel.text = string(from: greenSlider)
            case 2 : blueLabel.text = string(from: blueSlider)
            default:
                break
            }
            }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
//    @IBAction func redSliderAction()  {
//        redLabel.text = String(format: "%.2f", redSlider.value)
//    }
//
//    @IBAction func greenSliderAction() {
//        greenLabel.text = String(format: "%.2f", greenSlider.value)
//    }
//
//    @IBAction func blueSliderAction() {
//        blueLabel.text = String(format: "%.2f", blueSlider.value)
//    }
    
    
}


