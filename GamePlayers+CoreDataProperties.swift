//
//  GamePlayers+CoreDataProperties.swift
//  BatStats
//
//  Created by Murphy Basil Ward on 11/27/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import Foundation
import CoreData


extension GamePlayers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GamePlayers> {
        return NSFetchRequest<GamePlayers>(entityName: "GamePlayers");
    }

    @NSManaged public var catcher: String?
    @NSManaged public var pitcher: String?
    @NSManaged public var firstBase: String?
    @NSManaged public var secondBase: String?
    @NSManaged public var shortStop: String?
    @NSManaged public var thirdBase: String?
    @NSManaged public var rightField: String?
    @NSManaged public var centerField: String?
    @NSManaged public var leftField: String?

}
