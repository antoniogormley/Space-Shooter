//
//  Wave.swift
//  Space Shooter
//
//  Created by Antonio Gormley on 03/09/2021.
//

import SpriteKit

struct Wave:Codable {
    struct WaveEnemy: Codable {
        let position:Int
        let xOffset:CGFloat
        let moveStraight:Bool
    }
    let name:String
    let enemies:[WaveEnemy]
}
