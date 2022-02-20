//
//  Membri+CoreDataProperties.swift
//  AleMockup
//
//  Created by alessandro borrelli on 16/02/22.
//
//

import Foundation
import CoreData


extension Membri {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Membri> {
        return NSFetchRequest<Membri>(entityName: "Membri")
    }

    @NSManaged public var id: UUID
    @NSManaged public var id_famiglia: Int16
    @NSManaged public var nome: String
    @NSManaged public var relazionale: String?
    @NSManaged public var relationshipMembri: Famiglia?

}

extension Membri : Identifiable {

}
