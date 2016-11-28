//
//  Game+CoreDataProperties.swift
//  BatStats
//
//  Created by Murphy Basil Ward on 11/27/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import Foundation
import CoreData


extension Game {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Game> {
        return NSFetchRequest<Game>(entityName: "Game");
    }

    @NSManaged public var location: String?
    @NSManaged public var time: NSDate?
    @NSManaged public var homeAway: Bool
    @NSManaged public var notes: String?
    @NSManaged public var winLose: Bool
    @NSManaged public var oppenet: String?
    @NSManaged public var gamePlayer: NSSet?
    @NSManaged public var team: Team?

}

// MARK: Generated accessors for gamePlayer
extension Game {

    @objc(addGamePlayerObject:)
    @NSManaged public func addToGamePlayer(_ value: GamePlayers)

    @objc(removeGamePlayerObject:)
    @NSManaged public func removeFromGamePlayer(_ value: GamePlayers)

    @objc(addGamePlayer:)
    @NSManaged public func addToGamePlayer(_ values: NSSet)

    @objc(removeGamePlayer:)
    @NSManaged public func removeFromGamePlayer(_ values: NSSet)

}
