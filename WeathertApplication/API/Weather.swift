//
//  Weather.swift
//  WeathertApplication
//
//  Created by Henry Chukwu on 1/25/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import Foundation

class Weather: Codable {
    let forecast: Forecast
}

struct Forecast: Codable {
    let forecastText: ForecastText

    private enum CodinghKeys: String, CodingKey {
        case forecastText = "txt_forecast"
    }
}

struct ForecastText: Codable {
    let date: String
    let forecastDays: [ForecastDay]

    private enum CodinghKeys: String, CodingKey {
        case date
        case forecastDays = "forecastday"
    }

}

struct ForecastDay: Codable {
    let iconUrl: String
    let day: String
    let description: String

    private enum CodinghKeys: String, CodingKey {
        case iconUrl = "icon_url"
        case day = "title"
        case description = "fcttext"
    }
}
