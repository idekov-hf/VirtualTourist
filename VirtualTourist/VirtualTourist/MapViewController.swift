//
//  MapViewController.swift
//  VirtualTourist
//
//  Created by Iavor V. Dekov on 8/2/16.
//  Copyright © 2016 Iavor Dekov. All rights reserved.
//

import UIKit
import MapKit

// MARK: - MapViewController

class MapViewController: UIViewController {

	// MARK: Fields
	
	@IBOutlet var mapView: MKMapView!
}

// MARK: - Map View Methods (including MKMapViewDelegate Methods)

extension MapViewController: MKMapViewDelegate {
	
	@IBAction func handleLongPress(sender: UILongPressGestureRecognizer) {
		
		// Only add pin when long press began
		guard sender.state == .Began else {
			return
		}
		
		print("long press detected")
		
		let touchPoint = sender.locationInView(mapView)
		let touchMapCoordinate = mapView.convertPoint(touchPoint, toCoordinateFromView: mapView)
		
		let annotation = MKPointAnnotation()
		annotation.coordinate = touchMapCoordinate
		
		mapView.addAnnotation(annotation)
	}
	
	func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
		
		let pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
		pinView.pinTintColor = UIColor.redColor()
		pinView.animatesDrop = true
		
		return pinView
	}
	
	func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
		
	}
}
