//
//  ViewController.swift
//  Fanbase
//
//  Created by Malika Arora on 14/06/20.
//  Copyright © 2020 Malika Arora. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.movies = DataService.shared.getMovies()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ActorDetailsVC {
            vc.initActor(actor: sender as! Actor)
        }
    }
}

extension MoviesVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.movies.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as? MovieTableViewCell else {return UITableViewCell()}
        cell.delegate = self
        cell.configureCell(actors: self.movies[indexPath.section].actors ?? [Actor]())
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.movies[section].name
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 206 //UITableView.automaticDimension
    }
    
}

extension MoviesVC: ActorCellDelegate {
    func didSelectActor(actor: Actor) {
        self.performSegue(withIdentifier: "showDetailVC", sender: actor)
    }
}
