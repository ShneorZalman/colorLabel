//
//  ViewController.swift
//  colorLabel
//
//  Created by Zalman Zoteev on 30/04/2023.
//

import UIKit
 

final class SettingViewController: UIViewController {
    
//    MARK: -IBOutlets
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var backgroundColor: UIColor!
    unowned var delegate: SettingViewControllerDelegate!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            mainView.layer.cornerRadius = 10
            mainView.backgroundColor = backgroundColor
        
            redLabel.text = String(format: "%.2f", redSlider.value)
            greenLabel.text = String(format: "%.2f", greenSlider.value)
            blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        }
    
//    MARK: -IBActions
   
    @IBAction func doneButtonTapped() {
        delegate.setBackgroudColor(for: mainView.backgroundColor ?? .red)
        dismiss(animated: true)
    }
    @IBAction func setColor(_ sender: UISlider) {
        changeColorView()
                
                switch sender {
                case redSlider:
                    redLabel.text = String(format: "%.2f", redSlider.value)
                case greenSlider:
                    greenLabel.text = String(format: "%.2f", greenSlider.value)
                default:
                    blueLabel.text = String(format: "%.2f", blueSlider.value)
                }
    }
    
     func changeColorView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
    }

}

