//
//  EnemyType.swift
//  Space Shooter
//
//  Created by Antonio Gormley on 03/09/2021.
//

import SpriteKit

struct EnemyType:Codable {
    let name:String
    let shields:Int
    let speed:CGFloat
    let powerUpChance:Int
}
