//
//  Service.swift
//  Weather App
//
//  Created by Nathan Borges on 31/08/24.
//

import Foundation

struct City {
    let lat: String
    let lon: String
    let name: String
}


class Service {
    
    private let baseURL : String = "https://api.openweathermap.org/data/3.0/onecall"
    private let apiKey :String = "3725f758f6537b1113fdebf7cbb33714"
    private let session = URLSession.shared
    
    func fecthData(city: City, _ completion: @escaping (String) -> Void){
        let urlString = "\(baseURL)?lat=\(city.lat)&lon=\(city.lon)&apppid=\(apiKey)"
        guard let url = URL(string: urlString) else {return}
        
        let task = session.dataTask(with: url) {
            data, response, error in
            completion("oi")
            
        }
        task.resume()
    }
    
}
