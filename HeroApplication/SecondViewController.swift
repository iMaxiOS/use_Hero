//
//  SecondViewController.swift
//  HeroApplication
//
//  Created by Гранченко Максим on 10/2/18.
//  Copyright © 2018 Gary Tokman. All rights reserved.
//

import UIKit
import Hero

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

class SecondViewController: UIViewController {
    
    var city:City?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var panGR: UIPanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let city = city {
            let name = city.name
            nameLabel.text = name
            nameLabel.heroID = "\(name)_name"
            imageView.image = city.image
            imageView.heroID = "\(name)_image"
            descriptionLabel.heroID = "\(name)_description"
            descriptionLabel.text = city.description
        }
        
        panGR = UIPanGestureRecognizer(target: self, action: #selector(handlePan(gestureRecognizer:)))
        view.addGestureRecognizer(panGR)
    }
    
    @objc func handlePan(gestureRecognizer:UIPanGestureRecognizer) {
        // calculate the progress based on how far the user moved
        let translation = panGR.translation(in: nil)
        let progress = translation.y / 2 / view.bounds.height
        
        switch panGR.state {
        case .began:
            // begin the transition as normal
            dismiss(animated: true, completion: nil)
        case .changed:
            Hero.shared.update(progress)
            
            // update views' position (limited to only vertical scroll)
            Hero.shared.apply(modifiers: [.position(CGPoint(x:imageView.center.x, y:translation.y + imageView.center.y))], to: imageView)
            Hero.shared.apply(modifiers: [.position(CGPoint(x:nameLabel.center.x, y:translation.y + nameLabel.center.y))], to: nameLabel)
            Hero.shared.apply(modifiers: [.position(CGPoint(x:descriptionLabel.center.x, y:translation.y + descriptionLabel.center.y))], to: descriptionLabel)
        default:
            // end or cancel the transition based on the progress and user's touch velocity
            if progress + panGR.velocity(in: nil).y / view.bounds.height > 0.3 {
                Hero.shared.finish()
            } else {
                Hero.shared.cancel()
            }
        }
    }
}
