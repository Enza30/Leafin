//
//  Sort.swift
//  Leafin
//
//  Created by Farendza Muda on 02/12/21.
//

import Foundation

enum SortType: String, CaseIterable {
    case date
    case amount
}

enum SortOrder: String, CaseIterable {
    case ascending
    case descending
}

extension SortType: Identifiable {
    var id: String { rawValue }
}

extension SortOrder: Identifiable {
    var id: String { rawValue }
}


struct ExpenseLogSort {
    var sortType: SortType
    var sortOrder: SortOrder
    
    var isAscending: Bool {
        sortOrder == .ascending ? true : false
    }
    
    var sortDescriptor: NSSortDescriptor {
        switch sortType {
        case .date:
            return NSSortDescriptor(keyPath: \CategoriesDB.date, ascending: isAscending)
        case .amount:
            return NSSortDescriptor(keyPath: \CategoriesDB.expenseCategory, ascending: isAscending)
        }
    }
}

struct IncomeLogSort {
    var sortType: SortType
    var sortOrder: SortOrder
    
    var isAscending: Bool {
        sortOrder == .ascending ? true : false
    }
    
    var sortDescriptor: NSSortDescriptor {
        switch sortType {
        case .date:
            return NSSortDescriptor(keyPath: \IncomeDB.date, ascending: isAscending)
        case .amount:
            return NSSortDescriptor(keyPath: \IncomeDB.amount, ascending: isAscending)
        }
    }
}
