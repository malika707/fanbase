//
//  DataService.swift
//  Fanbase
//
//  Created by Malika Arora on 14/06/20.
//  Copyright © 2020 Malika Arora. All rights reserved.
//

import Foundation

class DataService {
    static let shared = DataService()
    
    private init() {}
    
    func getMovies() -> [Movie] {
        return [Movie(name: "Money Heist"),
                Movie(name: "Vampire Diaries"),
                Movie(name: "Kuch Kuch Hota Hai")
        ]
    }
    
    func getActors(for movieName: String) -> [Actor] {
        switch movieName.lowercased() {
        case "kuch kuch hota hai":
            return [Actor(name: "Shah Rukh Khan", age: 50, description: "Shah Rukh Khan, also known by the initialism SRK, is an Indian actor, film producer, and television personality. Referred to in the media as the Baadshah of Bollywood, King of Bollywood and King Khan, he has appeared in more than 80 Bollywood films,", imageName: "srk"),
                    Actor(name: "Kajol", age: 50, description: "Kajol, also known by her married name Kajol Devgan, is an Indian film actress, who predominantly works in Hindi cinema. Born into the Mukherjee-Samarth family, she is the daughter of actress Tanuja Samarth and filmmaker Shomu Mukherjee", imageName: "kajol"),
                    Actor(name: "Rani Mukherjee", age: 50, description: "Rani Mukerji is an Indian film actress. The recipient of such accolades as seven Filmfare Awards, her roles have been cited in the media as a significant departure from previous screen portrayals of Indian women", imageName: "rani"),
                    Actor(name: "Farida Jalal", age: 50, description: "Farida Jalal is an Indian actress. In a film career spanning almost fifty years, Jalal acted in over 200 films in the Hindi, the Telugu, and the Tamil film industries.", imageName: "farida"),
                    Actor(name: "Sana Saeed", age: 50, description: "Sana Saeed is an Indian actress and model, who has appeared in Bollywood films. Her first appearance was as a child artist in Kuch Kuch Hota Hai and continued to do so in films Har Dil Jo Pyar Karega and Badal.", imageName: "anjali")
            ]
        case "money heist":
            return [Actor(name: "The Professor", age: 50, description: "The Professor is a fictional character in the Netflix series Money Heist, portrayed by Álvaro Morte. In the TV show he is a main character, he is the mastermind of the heist who assembled the group, and Berlin's brother", imageName: "professor"),
                    Actor(name: "Tokyo", age: 50, description: "Tokyo is a fictional character in the Netflix series Money Heist, portrayed by Úrsula Corberó. In the TV show she is a main character, she is the unreliable narrator, and a runaway robber until scouted by the Professor to participate in his plan.", imageName: "tokyo"),
                    Actor(name: "Berlin", age: 50, description: "Berlin is a fictional character in the Netflix series Money Heist, portrayed by Pedro Alonso. In the TV show he is a main character, he is a terminally ill jewel thief and the Professor's second-in-command and brother.", imageName: "berlin"),
                    Actor(name: "Denver", age: 50, description: "According to Netflix's subtitles, his real full name is Ricardo Ramos. Until season 4 it was unclear if his name was Daniel or Ricardo, however it was confirmed to be Daniel in season 4 when Julia called him by his name.", imageName: "denver"),
                    Actor(name: "Nairobi", age: 50, description: "Nairobi is a fictional character in the Netflix series Money Heist, portrayed by Alba Flores. She served as the Quality Manager of the group, in charge with the printing of money on the Royal Mint of Spain in parts one and two and oversaw the melting of gold on the Bank of Spain in parts three and four.", imageName: "nairobi")
            ]
        case "vampire diaries":
            return [Actor(name: "Damon Salvatore", age: 50, description: "Damon Salvatore is a fictional character In L. J. Smith's novel series The Vampire Diaries. He is portrayed by Ian Somerhalder in the television series. Initially, Damon is the main antagonist with murderous and apathetic agendas, especially in the story's main setting, Mystic Falls", imageName: "damon"),
                    Actor(name: "Stefan Salvatore", age: 50, description: "Stefan Salvatore is a fictional character from L. J. Smith's novel series The Vampire Diaries. He is portrayed by Paul Wesley in the television series CW's The Vampire Diaries and The Originals.", imageName: "stefan"),
                    Actor(name: "Elena Gilbert", age: 50, description: "Elena Gilbert is a fictional character and protagonist from the television series The Vampire Diaries. In The Vampire Diaries, set in the fictional town of Mystic Falls, she is portrayed by Nina Dobrev. In the books, Elena was blonde, popular, selfish and a mean girl.", imageName: "elena"),
                    Actor(name: "Caroline Forbes", age: 50, description: "Caroline Forbes is a supporting female character of The Vampire Diaries novel series. She is the old childhood friend turned rival and enemy of Elena Gilbert.", imageName: "caroline"),
                    Actor(name: "Bonnie Bennet", age: 50, description: "Bonnie McCullough is a protagonist, the second main female character, the supporting protagonist and the narrator and quadragonist overall of The Vampire Diaries novel series.", imageName: "bonnie")
            ]
        default:
            return [Actor]()
        }
    }
}
