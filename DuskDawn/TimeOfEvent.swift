//
//  TimeOfEvent.swift
//  DuskDawn
//
//  Created by Raj Gokal on 1/2/16.
//  Copyright © 2016 Raj Gokal. All rights reserved.
//

import Foundation

public class TimeOfEvent {
    
    let timeHelper = EDSunriseSet.init(date: NSDate(), timezone: NSTimeZone.localTimeZone(), latitude: 37.5253, longitude: 122.5128)

    public var currentTime : NSDate {
        get {
            let time = NSDate()
            print(time)
            return time
        }
        
    }
    
    var nextSunrise : NSDate {
        get {
            let time = timeHelper.sunrise
            print(time)
            return time
        }
        
    }
    
    var nextSunset : NSDate {
        get {
            let time = timeHelper.sunset
            print(time)
            return time
        }
        
    }
    
}