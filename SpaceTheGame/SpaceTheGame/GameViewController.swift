//
//  GameViewController.swift
//  SpaceTheGame
//
//  Created by Michael Montella on 12/13/17.
//  Copyright © 2017 Michael Montella. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var scene: GameScene?
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override var keyCommands: [UIKeyCommand]? {
        return [
            UIKeyCommand(input: "s", modifierFlags: [], action: #selector(GameViewController.leftMove)),
            UIKeyCommand(input: "d", modifierFlags: [], action: #selector(GameViewController.rightMove))
        ]
    }
    
    @objc func leftMove(){
        print("wow")
    }
    
    @objc func rightMove(){
        print("damn")
    }

}

