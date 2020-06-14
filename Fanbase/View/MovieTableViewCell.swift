//
//  MovieTableViewCell.swift
//  Fanbase
//
//  Created by Malika Arora on 14/06/20.
//  Copyright © 2020 Malika Arora. All rights reserved.
//

import UIKit

protocol ActorCellDelegate: class {
    func didSelectActor(actor: Actor)
}

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    weak var delegate: ActorCellDelegate?
    private var actors = [Actor]()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    func configureCell(actors: [Actor]) {
        self.actors = actors
        self.collectionView.reloadData()
    }
    
}

extension MovieTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCollectionViewCell", for: indexPath) as? ActorCollectionViewCell else {return UICollectionViewCell()}
        cell.configureViews(actor: self.actors[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.didSelectActor(actor: self.actors[indexPath.row])
    }
}
