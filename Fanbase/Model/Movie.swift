//
//  Movie.swift
//  Fanbase
//
//  Created by Malika Arora on 14/06/20.
//  Copyright © 2020 Malika Arora. All rights reserved.
//

import Foundation

struct Movie {
    private (set) var name: String?
    private (set) var actors: [Actor]?
    
    init(name: String) {
        self.name = name
        self.actors = self.getActors()
    }
    
    private func getActors() -> [Actor] {
        DataService.shared.getActors(for: self.name ?? "")
    }
}
