//
//  ActorCollectionViewCell.swift
//  Fanbase
//
//  Created by Malika Arora on 14/06/20.
//  Copyright © 2020 Malika Arora. All rights reserved.
//

import UIKit

class ActorCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    func configureViews(actor: Actor) {
        self.imageView.image = UIImage(named: actor.imageName ?? "")
        self.nameLabel.text = actor.name
    }
}
