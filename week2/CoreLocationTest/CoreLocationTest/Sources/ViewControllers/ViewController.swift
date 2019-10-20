//
//  ViewController.swift
//  CoreLocationTest
//
//  Created by Minki Choe on 2019/10/12.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var latitudeAccuracy: UILabel!
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var longitudeAccuracy: UILabel!
    
    @IBOutlet weak var toggle: UISwitch!
    let locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleSwitch(_ sender: UISwitch) {
        if sender.isOn {
            self.locationManager.startUpdatingLocation()
        } else {
            self.locationManager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // 가장 최근의 위치 값
        let location: CLLocation = locations[locations.count - 1]
        
        latitude.text = String(format: "%.6f", location.coordinate.latitude)
        latitudeAccuracy.text = String(format: "%.6f", location.horizontalAccuracy)
        longitude.text = String(format: "%.6f", location.coordinate.latitude)
        longitudeAccuracy.text = String(format: "%.6f", location.verticalAccuracy)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if CLLocationManager.locationServicesEnabled() {
            if CLLocationManager.authorizationStatus() == .denied || CLLocationManager.authorizationStatus() == .restricted {
                let alert = UIAlertController(title: "오류 발생", message: "위치서비스 기능이 꺼져있음", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
                self.toggle.isOn = false
            } else {
                locationManager.desiredAccuracy = kCLLocationAccuracyBest
                locationManager.delegate = self
                locationManager.requestWhenInUseAuthorization()
            }
        } else {
            let alert = UIAlertController(title: "오류 발생", message: "위치서비스 제공 불가", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated:true, completion: nil)
        }
    }
}

