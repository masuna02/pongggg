//
//  GameScene.swift
//  pong
//
//  Created by mobileapps on 4/24/18.
//  Copyright © 2018 mobileapps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        self.physicsBody = border
    }
    func didBegin(_ contact: SKPhysicsContact) {
        print(contact)
    }
}
