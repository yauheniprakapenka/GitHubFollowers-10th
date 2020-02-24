//
//  PersistanceManager.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 24.02.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import Foundation

enum PersistenceActionType {
    case add, remove
}

enum PersistanceManager {
    
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                var retrievedFavotires = favorites
                
                switch actionType {
                case .add:
                    guard !retrievedFavotires.contains(favorite) else {
                        completed(.alreadyInfavorites)
                        return
                    }
                    
                    retrievedFavotires.append(favorite)
                    
                case .remove:
                    retrievedFavotires.removeAll { $0.login == favorite.login }
                }
                
                completed(save(favories: retrievedFavotires))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    static func save(favories: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favories)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
