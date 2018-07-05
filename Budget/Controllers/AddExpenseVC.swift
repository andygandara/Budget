//
//  AddExpenseVC.swift
//  Budget
//
//  Created by Andy Gandara on 7/4/18.
//  Copyright © 2018 Andy Gandara. All rights reserved.
//

import UIKit

class AddExpenseVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var categoryPicker: UIPickerView!
    var categories = ["Food & Groceries", "Entertainment", "Transportation", "Clothes","Housing", "Utilities", "Other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Entered AddExpenseVC.")
        self.categoryPicker.dataSource = self
        self.categoryPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }

    @IBAction func cancel(_ sender: Any) {
        print("Expense canceled.")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addExpense(_ sender: Any) {
        print("Expense added.")
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
