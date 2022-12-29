//
//  LocalDataLayer.swift
//  ios-practica
//
//  Created by Eric Olsson on 12/29/22.
//  Tokenize & persist login

import Foundation

final class LocalDataLayer {
    
    private static let token = "token"
    private static let heros = "heros"
    
    static let shared = LocalDataLayer()
    
    func save(token: String) {
        return UserDefaults.standard.set(token, forKey: Self.token)
    }
    
    func getToken() -> String {
        return UserDefaults.standard.string(forKey: Self.token) ?? ""
    }
    
    func isUserLoggedIn() -> Bool {
        return !getToken().isEmpty
    }
    
    func save(heros: [Hero]) {
        if let encodedHeros = try? JSONEncoder().encode(heros) {
            UserDefaults.standard.set(encodedHeros, forKey: Self.heros)
        }
    }
    
    func getHeros() -> [Hero] {
        if let savedHerosData = UserDefaults.standard.object(forKey: Self.heros) as? Data {
            do {
                let savedHeros = try JSONDecoder().decode([Hero].self, from: savedHerosData)
                return savedHeros
            } catch {
                print("Error occurred")
                return []
            }
        } else {
            return []
        }
    }
}
