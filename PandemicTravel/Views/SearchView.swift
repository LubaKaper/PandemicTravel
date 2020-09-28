//
//  SearchView.swift
//  PandemicTravel
//
//  Created by Liubov Kaper  on 9/19/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        travelFromlabel.clipsToBounds = true
        travelFromlabel.layer.cornerRadius = 13
        travelFromSarchBar.clipsToBounds = true
        travelFromSarchBar.layer.cornerRadius = 13
        travelTolabel.clipsToBounds = true
        travelTolabel.layer.cornerRadius = 13
        travelToSarchBar.clipsToBounds = true
        travelToSarchBar.layer.cornerRadius = 13
    }
    
    public lazy var travelFromlabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = .white
        label.text = "Where You Coming From"
        label.backgroundColor = .systemTeal
        return label
    }()
    
    public lazy var travelFromSarchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.autocapitalizationType = .words
        sb.placeholder = "enter your location"
        //sb.backgroundColor = .systemTeal
        return sb
    }()
    
    public lazy var travelTolabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 1
           label.textAlignment = .center
           label.font = UIFont.preferredFont(forTextStyle: .title1)
           label.textColor = .white
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
    
    public lazy var goButton: UIButton = {
        let btn = UIButton()
        
        //btn.backgroundColor = .systemTeal
        btn.frame = CGRect(x: 285, y: 485, width: 100, height: 200)
           btn.setTitle("Go", for: .normal)
           btn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
           btn.clipsToBounds = true
           btn.layer.cornerRadius = 40
           btn.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           btn.layer.borderWidth = 3.0
       // btn.layer.shadowColor = #colorLiteral(red: 0.5960784314, green: 0.5960784314, blue: 0.6156862745, alpha: 1)
       // btn.layer.shadowOpacity = 0.1
        btn.layer.shadowOffset = CGSize(width: 1, height: 1)
           //btn.addTarget(self,action: #selector(DestinationVC.buttonTapped), for: UIControlEvent.touchUpInside)
//           if let window = UIApplication.shared.keyWindow {
//               window.addSubview(btn)
//           }
        return btn
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
        setupTravelFromSearchBarConstraints()
        setupTravelToLabelContstrints()
        setupGoButtonConstraints()
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
    
    private func setupTravelFromSearchBarConstraints() {
        addSubview(travelFromSarchBar)
        travelFromSarchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            travelFromSarchBar.topAnchor.constraint(equalTo: travelFromlabel.bottomAnchor, constant: 20),
            travelFromSarchBar.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            travelFromSarchBar.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupTravelToLabelContstrints() {
        addSubview(travelTolabel)
        travelTolabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            travelTolabel.topAnchor.constraint(equalTo: travelFromSarchBar.bottomAnchor, constant: 30),
            travelTolabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            travelTolabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }

    private func setupGoButtonConstraints() {
        addSubview(goButton)
        goButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            goButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            goButton.heightAnchor.constraint(equalToConstant: 80),
            goButton.widthAnchor.constraint(equalToConstant: 80),
            goButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)

        ])
    }
}
