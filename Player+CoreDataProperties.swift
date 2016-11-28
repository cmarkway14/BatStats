//
//  Player+CoreDataProperties.swift
//  BatStats
//
//  Created by Murphy Basil Ward on 11/27/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import Foundation
import CoreData


extension Player {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Player> {
        return NSFetchRequest<Player>(entityName: "Player");
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var age: String?
    @NSManaged public var weight: Double
    @NSManaged public var height: String?
    @NSManaged public var atBats: Int16
    @NSManaged public var rbi: Int16
    @NSManaged public var stealAttempts: Int16
    @NSManaged public var stolenBases: Int16
    @NSManaged public var strikeOuts: Int16
    @NSManaged public var walks: Int16
    @NSManaged public var earnedRunAvg: Float
    @NSManaged public var team: Team?
    @NSManaged public var position: NSSet?

}

// MARK: Generated accessors for position
extension Player {

    @objc(addPositionObject:)
    @NSManaged public func addToPosition(_ value: Position)

    @objc(removePositionObject:)
    @NSManaged public func removeFromPosition(_ value: Position)

    @objc(addPosition:)
    @NSManaged public func addToPosition(_ values: NSSet)

    @objc(removePosition:)
    @NSManaged public func removeFromPosition(_ values: NSSet)

}
