//
//  ViewController.swift
//  PandemicTravel
//
//  Created by Liubov Kaper  on 9/19/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    private var detailView = SearchView()
    
    override func loadView() {
        view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
    }


}

