//
//  AnimePersistence.swift
//  AnimeListStarter
//
//  Created by C4Q on 10/9/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import Foundation
struct AnimationPersistenceManager {
    private init() {}
    static let manager = AnimationPersistenceManager()
    
     private let persistenceHelper = PersistenceHelper<Anime>(fileName: "anime.plist")
    
    func saveAnime(anime: Anime) throws {
        try persistenceHelper.save(newElement: anime)
        
    }
    
    func getAnime() throws -> [Anime] {
        return try persistenceHelper.getObjects()
    }
    
}
