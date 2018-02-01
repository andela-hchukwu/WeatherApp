//
//  WeatherAPIClient.swift
//  WeathertApplication
//
//  Created by Henry Chukwu on 1/30/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import Foundation

class WeatherAPIClient: APIClient {
    var session: URLSession

    init(session: URLSession = URLSession.shared) {
        self.session = session
    }

    func weather(with endpoint: WeatherEndpoint, completion: @escaping (Either<ForecastText, APIError>) -> Void) {
        let request = endpoint.request
        self.fetch(with: request) {(either: Either<Weather, APIError>) in
            switch either {
            case .value(let weather):
                let forecastText = weather.forecast.forecastText
                completion(.value(forecastText))
            case .error(let error):
                completion(.error(error))
            }

        }
    }
}
