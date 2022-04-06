//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Isen Matsumoto on 4/5/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
  
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)

    let regionRadius = 1000
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
    
        // Do any additional setup after loading the view.
        
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        let restaurantTwo = Restaurant(title: "Taqueria El Ranchero", type: "Mexican", coordinate: CLLocationCoordinate2D(latitude: 21.334176, longitude: -158.049956))
        
        
        MapView.addAnnotation(restaurantOne)
        MapView.addAnnotation(restaurantTwo)
    }

    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        MapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    
    
    
    

}

