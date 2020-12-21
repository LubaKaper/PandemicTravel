//
//  APIClientCountry.swift
//  PandemicTravel
//
//  Created by Liubov Kaper  on 11/6/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import Foundation
import Combine

struct CountryData: Decodable, Hashable {
    let country: String
    let timeline: TimeLine?
}

struct TimeLine: Decodable, Hashable {
    let cases: [String: Int]
    let deaths: [String: Int]
    let recovered: [String: Int]
}


class APIClientCountries {
    public func searchCountries(for query: String) -> AnyPublisher<CountryData, Error> {
        let lastdays = 30
        let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "russia"
        let endpoint = "https://disease.sh/v3/covid-19/historical/\(query)?lastdays=\(lastdays)"
        let url = URL(string: endpoint)!
        
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: CountryData.self, decoder: JSONDecoder())
            .map { $0.self }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
