//
//  CityCell.swift
//  HeroApplication
//
//  Created by Гранченко Максим on 10/2/18.
//  Copyright © 2018 Gary Tokman. All rights reserved.
//

import UIKit
import Hero

class CityCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var city: City? {
        didSet {
            reset()
        }
    }
    
    func reset(){
        heroModifiers = nil
        
        guard let city = city else { return }
        let name = city.name
        
        nameLabel.text = name
        nameLabel.heroID = "\(name)_name"
        imageView.image = city.image
        imageView.heroID = "\(name)_image"
        descriptionLabel.heroID = "\(name)_description"
        descriptionLabel.text = city.shortDescription
    }
}
