//
//  LocationResultController.swift
//  PandemicTravel
//
//  Created by Brendon Cecilio on 12/21/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class LocationResultController: UIViewController {
    
    let locationView = LocationResultsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = locationView
    }
    

}
