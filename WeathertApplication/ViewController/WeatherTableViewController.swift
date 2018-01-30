//
//  WeatherTableViewController.swift
//  WeathertApplication
//
//  Created by Henry Chukwu on 1/25/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let weatherApi = WeatherAPIClient()
        let weatherEndpoint = WeatherEndpoint.tenDayForecast(city: "Ikeja", state: "Lagos")
        weatherApi.weather(with: weatherEndpoint) { either in
            switch either {
            case .value(let forecastText):
                print(forecastText)
            case .error(let error):
                print(error)
            }
        }

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)

        // Configure the cell...

        return cell
    }


}
