//
//  ViewController.swift
//  ewallet
//
//  Created by Vitor Leonel on 20/09/20.
//

import UIKit

class FeedController: UIViewController {
    
    let screen: FeedControllerScreenProtocol = FeedControllerScreen()
    var balance: String = "$1.005,00"
    
    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        loadBalance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadBalance() {
        screen.setBalance(balance)
        screen.avatarImage = UIImage(named: "UserAvatar")
    }

}

