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
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        changeColourView()
        
        
    }
    
//    MARK: -ABOActions
   
    @IBAction func setColour(_ sender: UISlider) {
        changeColourView()
        
        switch sender {
        case redSlider:
            redLabel.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            blueLabel.text = String(format: "%.2f", blueSlider.value)
        }
    }
    
    private func changeColourView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
    }
}
