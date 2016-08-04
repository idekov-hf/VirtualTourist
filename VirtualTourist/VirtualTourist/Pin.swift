//
//  Pin.swift
//  VirtualTourist
//
//  Created by Iavor V. Dekov on 8/4/16.
//  Copyright © 2016 Iavor Dekov. All rights reserved.
//

import Foundation
import CoreData


class Pin: NSManagedObject {

	convenience init(latitude: Double, longitude: Double, context: NSManagedObjectContext) {
		
		if let ent = NSEntityDescription.entityForName("Pin", inManagedObjectContext: context) {
			
			self.init(entity: ent, insertIntoManagedObjectContext: context)
			self.latitude = latitude
			self.longitude = longitude
			
		} else {
			
			fatalError("Unable to find Entity name!")
		}
	}
}
