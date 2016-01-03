//
//  HomeViewController.swift
//  DuskDawn
//
//  Created by Raj Gokal on 1/2/16.
//  Copyright © 2016 Raj Gokal. All rights reserved.
//

import UIKit
import CoreLocation

class HomeViewController: ViewController {

    
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var sunriseTimeLabel: UILabel!
    @IBOutlet weak var sunsetTimeLabel: UILabel!
    
    var timeHelper = TimeOfEvent()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locManager = CLLocationManager()
        var currentLocation = CLLocation!()
        locManager.requestWhenInUseAuthorization()
        
        if( CLLocationManager.authorizationStatus() == CLAuthorizationStatus.AuthorizedWhenInUse ||
            CLLocationManager.authorizationStatus() == CLAuthorizationStatus.Authorized){
                
                currentLocation = locManager.location
                timeHelper.setLocation(currentLocation.coordinate.latitude, longitude:currentLocation.coordinate.longitude)
                
        }
        
        dateFormatter.dateFormat = "h:mm a" //format style. Browse online to get a format that fits your needs.
        
        var dateString = dateFormatter.stringFromDate(timeHelper.currentTime)
        currentTimeLabel.text = dateString
        
        dateString = dateFormatter.stringFromDate(timeHelper.nextSunset)
        sunsetTimeLabel.text = dateString
        
        dateString = dateFormatter.stringFromDate(timeHelper.nextSunrise)
        sunriseTimeLabel.text = dateString
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var dateFormatter = NSDateFormatter()
    
    func populateTimes() {

        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
