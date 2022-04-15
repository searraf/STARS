//
//  ViewController.swift
//  STARS
//
//  Created by seseadmin on 4/11/22.
//

import UIKit
import RealityKit
import AudioKit

let oscillator = AKOscillator()

AudioKit.output = oscillator
AudioKit.start()

oscillator.start()

sleep(10)


class ViewController: UIViewController {
   
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
