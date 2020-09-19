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
    
    public lazy var travelTolabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 1
           label.font = UIFont.preferredFont(forTextStyle: .title3)
           label.text = "Where Do You Want To Go"
           return label
       }()
    
    public lazy var travelToSarchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.autocapitalizationType = .words
        sb.placeholder = "enter destination"
        sb.backgroundColor = .systemTeal
        return sb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
        setupTravelFromLabelContstrints()
    }
    
    private func setupTravelFromLabelContstrints() {
        addSubview(travelFromlabel)
        travelFromlabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            travelFromlabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            travelFromlabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            travelFromlabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }

}
