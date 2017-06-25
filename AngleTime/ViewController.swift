//
//  ViewController.swift
//  AngleTime
//
//  Created by Michelline Tran on 6/14/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let graphView = GraphView()
        graphView.frame = view.frame
        view.addSubview(graphView)
    }
}
