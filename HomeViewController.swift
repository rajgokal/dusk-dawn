//
//  HomeViewController.swift
//  DuskDawn
//
//  Created by Raj Gokal on 1/2/16.
//  Copyright © 2016 Raj Gokal. All rights reserved.
//

import UIKit

class HomeViewController: ViewController {

    
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var sunriseTimeLabel: UILabel!
    @IBOutlet weak var sunsetTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateTimes()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var dateFormatter = NSDateFormatter()
    
    var timeHelper = TimeOfEvent.init()
    
    func populateTimes() {
        
        dateFormatter.dateFormat = "hh:mm" //format style. Browse online to get a format that fits your needs.
        
        var dateString = dateFormatter.stringFromDate(timeHelper.currentTime)
        currentTimeLabel.text = dateString
        
        dateString = dateFormatter.stringFromDate(timeHelper.nextSunset)
        sunsetTimeLabel.text = dateString
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
