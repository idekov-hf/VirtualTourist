//
//  Photo.swift
//  VirtualTourist
//
//  Created by Iavor V. Dekov on 8/4/16.
//  Copyright © 2016 Iavor Dekov. All rights reserved.
//

import Foundation
import CoreData


class Photo: NSManagedObject {

	convenience init(imageData: NSData, context: NSManagedObjectContext) {
		
		if let ent = NSEntityDescription.entityForName("Photo", inManagedObjectContext: context) {
			
			self.init(entity: ent, insertIntoManagedObjectContext: context)
			self.imageData = imageData
			
		} else {
			
			fatalError("Unable to find Entity name!")
		}
	}
}
