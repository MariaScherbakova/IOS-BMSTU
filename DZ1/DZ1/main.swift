//
//  main.swift
//  DZ1
//
//  Created by Vladimir Shchedrin on 23/12/2018.
//  Copyright © 2018 Mary Scherbakova. All rights reserved.
//

import Foundation

enum Currency :String {
    case RUR,USD,EUR
}

class Account {
    var id: Int
    var balance: Double
    var currency: Currency
    var Description: String
    var Offer: String?
    
    init(_ id: Int, _ balance: Double, _ currency: String, _ Description: String, _ Offer: String? = nil){
        self.id = id
        self.balance = balance
        self.currency = Currency(rawValue: currency)!
        self.Description = Description
        self.Offer = Offer
    }
    func print() -> String {
        return """
        User id: \(id)
        Balance: \(balance) \(currency.rawValue)
        Description: \(Description)
        Offer: \(Offer ?? "None")
        """
    }
}

var acc = Account(1,2.5,"RUR","My account")
print(acc.print())

