//
//  ViewController.swift
//  AntColonyOptimization
//
//  Created by Zackery leman on 4/5/15.
//  Copyright (c) 2015 Zleman. All rights reserved.
//

import UIKit

class AntColonyViewController: UIViewController {
    
    private let filereader = InputFileReader()
    private let fileLocation = "a280"
    private var solver: ACO!
    
    
    
    private struct Constants {
        static let tau_o = 1
        static let algorithm = "ACS"
        static let numberOfAnts = 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fileContents = filereader.readFrom(fileLocation)
        solver = ACO(fileContents: fileContents, algorithm: Constants.algorithm,numberOfAnts: Constants.numberOfAnts)
        //solver.runWithSettings()
    }



}

