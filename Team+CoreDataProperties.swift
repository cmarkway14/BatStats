//
//  Team+CoreDataProperties.swift
//  BatStats
//
//  Created by Murphy Basil Ward on 11/27/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import Foundation
import CoreData


extension Team {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Team> {
        return NSFetchRequest<Team>(entityName: "Team");
    }

    @NSManaged public var win: Int16
    @NSManaged public var teamName: String?
    @NSManaged public var lose: Int16
    @NSManaged public var image: NSData?
    @NSManaged public var players: NSSet?
    @NSManaged public var game: NSSet?

}

// MARK: Generated accessors for players
extension Team {

    @objc(addPlayersObject:)
    @NSManaged public func addToPlayers(_ value: Player)

    @objc(removePlayersObject:)
    @NSManaged public func removeFromPlayers(_ value: Player)

    @objc(addPlayers:)
    @NSManaged public func addToPlayers(_ values: NSSet)

    @objc(removePlayers:)
    @NSManaged public func removeFromPlayers(_ values: NSSet)

}

// MARK: Generated accessors for game
extension Team {

    @objc(addGameObject:)
    @NSManaged public func addToGame(_ value: Game)

    @objc(removeGameObject:)
    @NSManaged public func removeFromGame(_ value: Game)

    @objc(addGame:)
    @NSManaged public func addToGame(_ values: NSSet)

    @objc(removeGame:)
    @NSManaged public func removeFromGame(_ values: NSSet)

}
