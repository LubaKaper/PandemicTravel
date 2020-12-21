//
//  LocationResultsView.swift
//  PandemicTravel
//
//  Created by Brendon Cecilio on 12/21/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class LocationResultsView: UIView {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        return collection
    }()
    
    private lazy var imageHeader: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person")
        return image
    }()
    
    public lazy var lockdownView: UIView = {
        let view = UIView()
        return view
    }()
    
    public lazy var lockdownLabel: UILabel = {
        let label = UILabel()
        return label
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
        backgroundColor = .systemGray
        setupHeader()
    }
    
    private func setupHeader() {
        addSubview(imageHeader)
        imageHeader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageHeader.topAnchor.constraint(equalTo: topAnchor),
            imageHeader.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageHeader.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageHeader.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),
        ])
    }

}
