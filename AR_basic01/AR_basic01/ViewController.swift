//
//  ViewController.swift
//  AR_basic01
//
//  Created by Gillian  on 2017/11/23.
//  Copyright © 2017年 Gillian . All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sceneView = ARSCNView(frame: self.view.frame);
        self.view.addSubview(self.sceneView);
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene()
        
        let box = SCNBox(width: 0.2, height: 0.2, length: 0.2, chamferRadius: 0);
        let material = SCNMaterial();
        material.diffuse.contents = UIImage(named: "Brick-2377.jpg");
        
        let node = SCNNode();
        node.geometry = box;
        node.geometry?.materials = [material];
        node.position = SCNVector3(0 , 0.1, -0.5);
        
        let sphere = SCNSphere(radius: 0.2);
        let spherematerial = SCNMaterial();
        spherematerial.diffuse.contents = UIImage(named: "earth.jpg");
        let sphereNode = SCNNode();
        sphereNode.geometry = sphere;
        sphereNode.geometry?.materials = [spherematerial];
        sphereNode.position = SCNVector3(0.5,0.1,-1);
        
        scene.rootNode.addChildNode(node);
        scene.rootNode.addChildNode(sphereNode);
        
        
        
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    

}
