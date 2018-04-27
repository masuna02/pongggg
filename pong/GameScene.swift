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
    
    var topPaddle = SKSpriteNode()
    var bottomPaddle = SKSpriteNode()
    var rightPaddle = SKSpriteNode()
    var leftPaddle = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
        physicsWorld.contactDelegate = self
        
        topPaddle = self.childNode(withName: "topPaddle") as! SKSpriteNode
        bottomPaddle = self.childNode(withName: "bottomPaddle") as! SKSpriteNode
        rightPaddle = self.childNode(withName: "rightPaddle") as! SKSpriteNode
        leftPaddle = self.childNode(withName: "leftPaddle") as! SKSpriteNode
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        self.physicsBody = border
    }
    func didBegin(_ contact: SKPhysicsContact) {
        print(contact.bodyA.node?.name as Any)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        topPaddle.run(SKAction.moveTo(x: location.x, duration: 0.2))
           bottomPaddle.run(SKAction.moveTo(x: -location.x, duration: 0.2))
           rightPaddle.run(SKAction.moveTo(y: -location.x, duration: 0.2))
           leftPaddle.run(SKAction.moveTo(y: location.x, duration: 0.2))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        topPaddle.run(SKAction.moveTo(x: location.x, duration: 0.2))
        bottomPaddle.run(SKAction.moveTo(x: -location.x, duration: 0.2))
        leftPaddle.run(SKAction.moveTo(y: location.x, duration: 0.2))
        rightPaddle.run(SKAction.moveTo(y: -location.x, duration: 0.2))
        //6
        
    }
}
