//
//  Player+CoreDataProperties.swift
//  BatStats
//
//  Created by Curtis Markway on 11/25/16.
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
    @NSManaged public var age: Int16
    @NSManaged public var height: String?
    @NSManaged public var weight: Float
    @NSManaged public var atBats: Int16
    @NSManaged public var strikeOuts: Int16
    @NSManaged public var walks: Int16
    @NSManaged public var rbi: Int16
    @NSManaged public var stolenBases: Int16
    @NSManaged public var stealAttempts: Int16
    @NSManaged public var earnedRunAvg: Float
    @NSManaged public var team: Team?
    @NSManaged public var positions: NSSet?

}

// MARK: Generated accessors for positions
extension Player {

    @objc(addPositionsObject:)
    @NSManaged public func addToPositions(_ value: Position)

    @objc(removePositionsObject:)
    @NSManaged public func removeFromPositions(_ value: Position)

    @objc(addPositions:)
    @NSManaged public func addToPositions(_ values: NSSet)

    @objc(removePositions:)
    @NSManaged public func removeFromPositions(_ values: NSSet)

}
