//
//  ViewController.swift
//  colorLabel
//
//  Created by Zalman Zoteev on 30/04/2023.
//

import UIKit

final class ViewController: UIViewController {

//    MARK: -ABOutlets
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var redSliderValue: UISlider!
    @IBOutlet var greenSliderValue: UISlider!
    @IBOutlet var blueSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabelValue.text = String(format: "%.2f", redSliderValue.value)
        redSliderValue.maximumTrackTintColor = .clear
        redSliderValue.minimumTrackTintColor = .red
        
        greenLabelValue.text = String(format: "%.2f", greenSliderValue.value)
        greenSliderValue.minimumTrackTintColor = .green
        greenSliderValue.maximumTrackTintColor = .clear
        
        blueLabelValue.text = String(format: "%.2f", blueSliderValue.value)
        blueSliderValue.minimumTrackTintColor = .blue
        blueSliderValue.maximumTrackTintColor = .clear
        
        changeColourView()
        mainView.layer.cornerRadius = 10
    }

    private func changeColourView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSliderValue.value),
            green: CGFloat(greenSliderValue.value),
            blue: CGFloat(blueSliderValue.value),
            alpha: 1)}

//    MARK: -ABOActions
    @IBAction func redSlider() {
        redLabelValue.text = String(format: "%.2f", redSliderValue.value)
        changeColourView()
    }
    @IBAction func greenSlider() {
       greenLabelValue.text = String(format: "%.2f",greenSliderValue.value)
        changeColourView()
    }
    @IBAction func blueSlider() {
        blueLabelValue.text = String(format: "%.2f", blueSliderValue.value)
        changeColourView()
    }
}
