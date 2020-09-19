//
//  SearchView.swift
//  PandemicTravel
//
//  Created by Liubov Kaper  on 9/19/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    public lazy var travelFromlabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = "Where You Coming From"
        return label
    }()
    
    public lazy var travelFromSarchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.autocapitalizationType = .words
        sb.placeholder = "enter your location"
        sb.backgroundColor = .systemTeal
        return sb
    }()

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
        
    }

}
