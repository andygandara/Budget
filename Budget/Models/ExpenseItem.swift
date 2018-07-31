//
//  ExpenseItem.swift
//  Budget
//
//  Created by Andy Gandara on 7/4/18.
//  Copyright © 2018 Andy Gandara. All rights reserved.
//

import Foundation

class ExpenseItem {
    var amount: Float
    var category: String
    var date: Date
    
    init(amount: Float, date: Date, category: String) {
        self.amount = amount
        self.category = category
        self.date = date
    }
}
