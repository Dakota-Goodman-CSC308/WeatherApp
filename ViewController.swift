//
//  ViewController.swift
//  WeatherApp
//
//  Created by Goodman, Dakota K. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func getWeatherImage(matching weather: String) -> UIImage?{
        switch weather {
        case "Sunny":
            return UIImage(named:"sunny")
        case "Rainy":
            return UIImage(named:"rainy")
        case "Snowy":
            return UIImage(named:"snowy")
        case "Cloudy":
            return UIImage(named:"cloudy")
        default:
            return UIImage(named:"weather")
        }    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement() ?? "Sunny"
//        guard let weather else{
//            return
//        }
        let temp = Int.random(in: 0 ... 100)
        
        weatherImage.image = getWeatherImage(matching: weather)
        
        statusLabel.text = weather
        tempLabel.text = "\(temp)℉"
        
        func getTempDescription(matching temp: Int) -> String?{
            switch temp {
            case ..<20:
                return "Extreme cold"
            case 20..<50:
                return "It's cold outside!"
            case 50..<70:
                return "Cool and mild!"
            case 70..<90:
                return "Warm!"
            default:
                return "Heat alert!"
            }
        }
        
        descriptionLabel.text = getTempDescription(matching: temp)
        

        
    }


}

