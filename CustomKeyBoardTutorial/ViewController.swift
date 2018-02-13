//
//  ViewController.swift
//  CustomKeyBoardTutorial
//
//  Created by Jean Raphael on 12/02/2018.
//  Copyright © 2018 Jean Raphael Bordet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectColorView: FirstResponderControl!
    var datePicker = UIPickerView()
    
    var colorsDataSource: [UIColor] = [.red,
                                       .green,
                                       .lightGray]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectColorView.addTarget(selectColorView,
                                 action: #selector(becomeFirstResponder),
                                 for: .touchUpInside)

        selectColorView.inputView = datePicker
        
        // MARK: - Picker
        datePicker.delegate = self
        datePicker.dataSource = self
        
        datePicker.backgroundColor = .white

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK: - UIPickerViewDelegate

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.backgroundColor = colorsDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsDataSource[row].debugDescription
    }
}

// MARK: - UIPickerViewDataSource

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsDataSource.count
    }
    
    
}
