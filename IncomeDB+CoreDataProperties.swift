//
//  IncomeDB+CoreDataProperties.swift
//  Leafin
//
//  Created by Farendza Muda on 04/12/21.
//
//

import Foundation
import CoreData


extension IncomeDB {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IncomeDB> {
        return NSFetchRequest<IncomeDB>(entityName: "IncomeDB")
    }

    @NSManaged public var amount: NSDecimalNumber?
    @NSManaged public var date: Date?

}

extension IncomeDB : Identifiable {

}
