//
//  Bundle-Decoding.swift
//  Space Shooter
//
//  Created by Antonio Gormley on 03/09/2021.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate\(file)")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load\(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        return loaded
    }
}
