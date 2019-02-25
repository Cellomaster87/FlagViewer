//
//  ViewController.swift
//  FlagViewer
//
//  Created by Michele Galvagno on 24/02/2019.
//  Copyright © 2019 Michele Galvagno. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    // MARK: - Properties
    var flags = [String]()
    
    // MARK: - Outlets & Actions
    
    // MARK: - Navigation
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Retrieve images from file manager and store them into the array.
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("png") {
                flags.append(item)
            }
        }
        flags.sort()
        
        print(flags) // just for test purposes.
    }
    
    // MARK: - Methods

}

