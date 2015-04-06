//
//  ACO.swift
//  AntColonyOptimization
//
//  Created by Zackery leman on 4/5/15.
//  Copyright (c) 2015 Zleman. All rights reserved.
//

import Foundation

class ACO  {
    var ants: [Ant]!
    var edges: [String:Edge]!
    var algorithm: String!
    var cities: [Point2D] = []
    
    init(fileContents:[Point2D], algorithm:String,numberOfAnts:Int){
        self.cities = fileContents
        self.edges =  makeEdges()
        self.algorithm = algorithm
        self.ants = getAnts(numberOfAnts)
        initIteration()
    }
    
    func runWithSettings(){
        
    }
    
    
    func makeEdges() -> [String:Edge]{
        var edgeDict:[String:Edge] = [:]
        
        for var a = 0; a < cities.count; a++ {
            
            for var b = a + 1; b < cities.count; b++ {
                
                edgeDict["\(a):\(b)"] = Edge(CityA: a,CityB: b,CityALocation: cities[a],CityBLocation: cities[b])
            }
        }
        return edgeDict
    }
    
    
    
    func getAnts(numberOfAnts: Int) ->[Ant]{
        var ants: [Ant] = []
        for index in 1...numberOfAnts{
            ants.append(Ant())
        }
        return ants
    }
    
    func initIteration(){
        //randomizeAntStartLocation
        for index in 0...ants.count - 1 {
            
            let randomStart = arc4random_uniform(UInt32(cities.count))
            ants[index].currentCity = Int(randomStart)
            
            ants[index].remainingCities = intArraywithRange(0, max: cities.count, except: ants[index].currentCity)
            
        }
        
    }
    
    
    func intArraywithRange(min: Int, max: Int, except:Int) -> [Int]{
        
        var array:[Int] = []
        
        
        for var i = min; i < max; i++ {
            if  i != except {
                array.append(i)
            }
        }
        return array
    }
    
    
}


