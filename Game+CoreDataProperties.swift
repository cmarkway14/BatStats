//
//  Game+CoreDataProperties.swift
//  BatStats
//
//  Created by Curtis Markway on 11/25/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import Foundation
import CoreData


extension Game {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Game> {
        return NSFetchRequest<Game>(entityName: "Game");
    }

    @NSManaged public var winOrLose: Bool
    @NSManaged public var time: NSDate?
    @NSManaged public var homeOrAway: Bool
    @NSManaged public var notes: String?
    @NSManaged public var opponent: String?

}
