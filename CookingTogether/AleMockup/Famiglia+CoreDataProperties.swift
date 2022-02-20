//
//  Famiglia+CoreDataProperties.swift
//  AleMockup
//
//  Created by alessandro borrelli on 16/02/22.
//
//

import Foundation
import CoreData


extension Famiglia {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Famiglia> {
        return NSFetchRequest<Famiglia>(entityName: "Famiglia")
    }

    @NSManaged public var ido: Int16
    @NSManaged public var membri: String?
    @NSManaged public var nome: String
    @NSManaged public var relationshipFamiglia: NSSet?

}

// MARK: Generated accessors for relationshipFamiglia
extension Famiglia {

    @objc(addRelationshipFamigliaObject:)
    @NSManaged public func addToRelationshipFamiglia(_ value: Membri)

    @objc(removeRelationshipFamigliaObject:)
    @NSManaged public func removeFromRelationshipFamiglia(_ value: Membri)

    @objc(addRelationshipFamiglia:)
    @NSManaged public func addToRelationshipFamiglia(_ values: NSSet)

    @objc(removeRelationshipFamiglia:)
    @NSManaged public func removeFromRelationshipFamiglia(_ values: NSSet)

}

extension Famiglia : Identifiable {

}
