//
//  CategoriesDB+CoreDataProperties.swift
//  Leafin
//
//  Created by Farendza Muda on 04/12/21.
//
//

import Foundation
import CoreData


extension CategoriesDB {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CategoriesDB> {
        return NSFetchRequest<CategoriesDB>(entityName: "CategoriesDB")
    }

    @NSManaged public var budgetCategory: NSDecimalNumber?
    @NSManaged public var date: Date?
    @NSManaged public var expenseCategory: NSDecimalNumber?
    @NSManaged public var isChecked: Bool
    @NSManaged public var namaCategory: String?

}

extension CategoriesDB : Identifiable {

}
