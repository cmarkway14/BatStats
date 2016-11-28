//
//  Position+CoreDataProperties.swift
//  BatStats
//
//  Created by Curtis Markway on 11/25/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import Foundation
import CoreData


extension Position {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Position> {
        return NSFetchRequest<Position>(entityName: "Position");
    }

    @NSManaged public var catcher: Bool
    @NSManaged public var centerField: Bool
    @NSManaged public var leftField: Bool
    @NSManaged public var rightField: Bool
    @NSManaged public var thirdBase: Bool
    @NSManaged public var shortStop: Bool
    @NSManaged public var secondBase: Bool
    @NSManaged public var firstBase: Bool
    @NSManaged public var pitcher: Bool

}
