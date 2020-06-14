//
//  ActorDetailsVC.swift
//  Fanbase
//
//  Created by Malika Arora on 14/06/20.
//  Copyright © 2020 Malika Arora. All rights reserved.
//

import UIKit

class ActorDetailsVC: UIViewController {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descLabel: UILabel!
    
    private var actor = Actor()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupDetailsView()
    }
    
    func initActor(actor: Actor) {
        self.actor = actor
    }
    
    private func setupDetailsView() {
        self.imageView.image = UIImage(named: self.actor.imageName ?? "")
        self.nameLabel.text = self.actor.name ?? ""
        self.descLabel.text = self.actor.description ?? ""
    }

}
