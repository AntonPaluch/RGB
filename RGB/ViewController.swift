//
//  ViewController.swift
//  RGB
//
//  Created by Pandos on 30.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRGB: UIView!
    
    @IBOutlet weak var redLabelSlider: UILabel!
    @IBOutlet weak var greenLabelSlider: UILabel!
    @IBOutlet weak var blueLabelSlider: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redPoint: CGFloat = 0
    var greenPoint: CGFloat = 0
    var bluePoint: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redPoint = CGFloat(redSlider.value)
        greenPoint = CGFloat(greenSlider.value)
        bluePoint = CGFloat(blueSlider.value)
        
        viewRGB.backgroundColor = UIColor(displayP3Red: redPoint, green: greenPoint, blue: bluePoint, alpha: 1)
        
        //Red Slider
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redLabelSlider.text = String(format: "%.2f", arguments: [redSlider.value])
        
        //Green Slider
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenLabelSlider.text = String(format: "%.2f", arguments: [greenSlider.value])
        
        // Blue Slider
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueLabelSlider.text = String(format: "%.2f", arguments: [blueSlider.value])
        
    }
    @IBAction func redSliderAction() {
        redLabelSlider.text = String(format: "%.2f", arguments: [redSlider.value])
        redPoint = CGFloat(redSlider.value)
        viewRGB.backgroundColor = UIColor(displayP3Red: redPoint, green: greenPoint, blue: bluePoint, alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenLabelSlider.text = String(format: "%.2f", arguments: [greenSlider.value])
        greenPoint = CGFloat(greenSlider.value)
        viewRGB.backgroundColor = UIColor(displayP3Red: redPoint, green: greenPoint, blue: bluePoint, alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueLabelSlider.text = String(format: "%.2f", arguments: [blueSlider.value])
        bluePoint = CGFloat(blueSlider.value)
        viewRGB.backgroundColor = UIColor(displayP3Red: redPoint, green: greenPoint, blue: bluePoint, alpha: 1)
    }
    
}

