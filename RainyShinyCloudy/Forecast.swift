//
//  Forecast.swift
//  RainyShinyCloudy
//
//  Created by Hafiz Adnan Hussain on 19/05/2017.
//  Copyright © 2017 Bittech Web Solutions. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                
                let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision)/10)
                
                self._lowTemp = "\(kelvinToFarenheit)"
                
            }
            
            if let max = temp["max"] as? Double {
                
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision)/10)
                
                self._highTemp = "\(kelvinToFarenheit)"
                
            }
            
            
            
        }
        
    }
    
    
    
    
}
