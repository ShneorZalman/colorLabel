//
//  MainViewController.swift
//  colorLabel
//
//  Created by Zalman Zoteev on 19/05/2023.
//

import UIKit

protocol SettingViewControllerDelegate: AnyObject {
    func setBackgroudColor(for backgroundColor: UIColor)
}

final class MainViewController: UIViewController {
    
    var backgroundColor: UIColor!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.backgroundColor = view.backgroundColor
        settingVC.delegate = self
    }
}

// MARK: - SettingViewControllerDelegate
extension MainViewController: SettingViewControllerDelegate {
    func setBackgroudColor(for backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
    }
    
    
}
