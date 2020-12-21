//
//  APIClientStates.swift
//  PandemicTravel
//
//  Created by Liubov Kaper  on 11/4/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import Foundation
import Combine

//struct DateDataWrapper: Decodable {
//    let hits: [DateData]
//}

struct DateData: Decodable, Hashable {
    let date: String
    let state: String
    let cases: Int
    let deaths: Int
}

class APIClientStates {
    public func searchStates(for query: String) -> AnyPublisher<[DateData], Error> {
        let lastdays = 30
        let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "new york"
        
        let endpoint = "https://disease.sh/v3/covid-19/nyt/states/\(query)?lastdays=\(lastdays)"
        let url = URL(string: endpoint)!
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [DateData].self, decoder: JSONDecoder())
            .map { $0.self }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()

    }
}
