//
//  GameScene.swift
//  Graphics notes
//
//  Created by DANIEL VEGA on 11/17/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var cam = SKCameraNode()
    var deathStar: SKNode!
    var blackBall1: SKNode!
    var blackBall2: SKNode!
    var blackBall3: SKNode!
    var scoreLabel: SKLabelNode!
    var score = 0
    var collide = false
    
    
    
    override func didMove(to view: SKView) {
        deathStar = self.childNode(withName: "deathStar")!
        blackBall1 = self.childNode(withName: "blackBall1")!
        blackBall2 = self.childNode(withName: "blackBall2")!
        blackBall3 = self.childNode(withName: "blackBall3")!
        scoreLabel = self.childNode(withName: "scoreCount") as? SKLabelNode
        physicsWorld.contactDelegate = self
        self.camera = cam
        
        //deathStar.position = CGPoint(x: -100, y: 100)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       // deathStar.position = CGPoint(x: deathStar.position.x, y: deathStar.position.y)
        
        deathStar.physicsBody?.velocity.dy = 1000
       
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
//        deathStar = self.childNode(withName: "deathStar")!
        score += 1
        scoreLabel.text = "Score: \(score)"
        print("collision happened")
    }
  
    
    
    override func update(_ currentTime: TimeInterval) {
        blackBall1.physicsBody?.velocity.dx = 50
        blackBall1.physicsBody?.velocity.dy = 50
        //cam.position = deathStar.position
    }
}
