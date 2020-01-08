//
//  Emitter.swift
//  New-Year-in-Quebec-City
//
//  Created by Yuliia Engman on 1/8/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
class Emitter {
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        // here you ca assign what exactly you want to see on screen
        emitter.emitterCells = generateEmitterCells(with: image)
        
        return emitter
    }
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
    var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1
        cell.lifetime = 50.0
        cell.lifetimeRange = 0
        //cell.color = color.cgColor
        cell.velocity = CGFloat(25)
        cell.emissionLatitude = (180 * (.pi/180))
        cell.emissionRange = (45 * (.pi/180))
        
        cell.scale = 0.4
        cell.scaleRange = 0.3
            
        cells.append(cell)
    
    return cells
}
}
