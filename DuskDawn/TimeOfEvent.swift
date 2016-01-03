//
//  TimeOfEvent.swift
//  DuskDawn
//
//  Created by Raj Gokal on 1/2/16.
//  Copyright © 2016 Raj Gokal. All rights reserved.
//

import Foundation


public class TimeOfEvent {
    
    var timeHelper = EventCalculator.init(date: NSDate(), timezone: NSTimeZone.localTimeZone(), latitude: 37.785834, longitude: -122.5128)
    
    public func setLocation (latitude : Double, longitude : Double) {
    
        timeHelper = EventCalculator.sunrisesetWithDate(NSDate(), timezone: NSTimeZone.localTimeZone(), latitude: latitude , longitude: longitude)
        
    }

    public var currentTime : NSDate {
        get {
            let time = NSDate()
            print(time)
            return time
        }
        
    }

    var nextFirstLight : NSDate {
        get {
            let time = timeHelper.nauticalTwilightStart
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
    
    var nextLastLight : NSDate {
        get {
            let time = timeHelper.nauticalTwilightEnd
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