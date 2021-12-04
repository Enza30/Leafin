//
//  Utils.swift
//  Leafin
//
//  Created by Farendza Muda on 02/12/21.
//

import Foundation

struct Utils {
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter ()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }()
    
    static let dateFormatter: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
}

func getDateFormatter(date: Date?, format: String = "yyy-MM-dd") -> String {
    guard let date = date else { return ""}
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.string(from: date)
    
}

extension Double {
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
}
