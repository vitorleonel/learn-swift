//
//  ViewController.swift
//  ewallet
//
//  Created by Vitor Leonel on 20/09/20.
//

import UIKit

class FeedController: UIViewController {
    
    let screen = FeedControllerScreen();
    
    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

