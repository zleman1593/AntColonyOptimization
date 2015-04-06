//
//  Edge.swift
//  AntColonyOptimization
//
//  Created by Zackery leman on 4/5/15.
//  Copyright (c) 2015 Zleman. All rights reserved.
//

import Foundation

class Edge {
    
    var CityA: Int!
    var CityB: Int!
    var CityALocation: Point2D!
    var CityBLocation: Point2D!
     var euclideanDistance: Double? { //Make this lazy
    return distance()
    }
    
    
    init(CityA: Int, CityB: Int,CityALocation: Point2D, CityBLocation: Point2D){
        
        self.CityA = CityA
        self.CityB = CityB
        self.CityALocation = CityALocation
        self.CityBLocation = CityBLocation
    }
    
    
    func distance() -> Double{
        //calculating distance by euclidean formula
        let x = self.CityALocation.x - self.CityBLocation.x
        let y = self.CityALocation.y - self.CityBLocation.y
        var dist = pow(x,2)+pow(y,2)
        return sqrt(dist)
    }
    
}