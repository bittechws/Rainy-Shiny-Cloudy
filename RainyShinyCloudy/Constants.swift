//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Hafiz Adnan Hussain on 15/05/2017.
//  Copyright © 2017 Bittech Web Solutions. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "d4cbc9b41ba35306dc1d324347bafa1c"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

let FORECAST_URL = "http://samples.openweathermap.org/data/2.5/forecast/daily?lat=-35&lon=123&cnt=10&appid=d4cbc9b41ba35306dc1d324347bafa1c"
