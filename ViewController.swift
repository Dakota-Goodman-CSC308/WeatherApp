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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = "Rainy"
        let temp = 27
        //        if weather == "Sunny" {
        //            weatherImage.image = UIImage(named:"sunny")
        //        }else if weather == "Rainy" {
        //            weatherImage.image = UIImage(named:"rainy")
        //        }else if weather == "Snowy" {
        //            weatherImage.image = UIImage(named:"snowy")
        //        }else if weather == "Cloudy" {
        //            weatherImage.image = UIImage(named:"cloudy")
        //        }else {
        //            weatherImage.image = UIImage(named:"weather")
        //        }
        
        switch weather {
        case "Sunny":
            weatherImage.image = UIImage(named:"sunny")
        case "Rainy":
            weatherImage.image = UIImage(named:"rainy")
        case "Snowy":
            weatherImage.image = UIImage(named:"snowy")
        case "Cloudy":
            weatherImage.image = UIImage(named:"cloudy")
        default:
            weatherImage.image = UIImage(named:"weather")
        }
        
        statusLabel.text = weather
        tempLabel.text = "\(temp)℉"
        

//        if temp < 20 {
//            descriptionLabel.text = "Extreme cold"
//        }else if temp >= 20 && temp <= 49 {
//            descriptionLabel.text = "It's cold outside!"
//        }else if temp >= 50 && temp <= 68 {
//            descriptionLabel.text = "Cool and mild!"
//        }else if (69...85).contains(temp){
//            descriptionLabel.text = "Warm!"
//        }else{
//            descriptionLabel.text = "Heat alert!"
//        }
//
        
        switch temp {
        case ..<20:
            descriptionLabel.text = "Extreme cold"
        case 20..<50:
            descriptionLabel.text = "It's cold outside!"
        case 50..<70:
            descriptionLabel.text = "Cool and mild!"
        case 70..<90:
            descriptionLabel.text = "Warm!"
        default:
            descriptionLabel.text = "Heat alert!"
        }
        
    }


}

