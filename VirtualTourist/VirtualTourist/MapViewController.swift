//
//  MapViewController.swift
//  VirtualTourist
//
//  Created by Iavor V. Dekov on 8/2/16.
//  Copyright © 2016 Iavor Dekov. All rights reserved.
//

import UIKit
import MapKit

// MARK: MapViewController

class MapViewController: UIViewController {

	// MARK: Fields
	
	@IBOutlet var mapView: MKMapView!
}

// MARK: Map View Related Methods (including MKMapViewDelegate Methods)

extension MapViewController: MKMapViewDelegate {
	
	@IBAction func handleLongPress(sender: UILongPressGestureRecognizer) {
		if sender.state == .Began {
			print("Long press detected")
		}
	}
	
	func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
		
	}
}
