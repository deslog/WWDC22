//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/19.
//  https://www.youtube.com/watch?v=itGRaAryUxA

import ARKit
import RealityKit
// import PlaygroundSupport


// create arview
let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)

//create simple AR cube to place in scene
let mesh = MeshResource.generateBox(size: 0.2)
let material = SimpleMaterial(color: .blue, roughness: 0.5, isMetallic: true)
let modelEntity = ModelEntity(mesh: mesh, materials: [material])
let anchorEntity = AnchorEntity(plane: .horizontal)
anchorEntity.addChild(modelEntity)
arView.scene.addAnchor(anchorEntity)


