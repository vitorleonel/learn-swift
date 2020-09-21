//
//  FeedScreen.swift
//  ewallet
//
//  Created by Vitor Leonel on 20/09/20.
//

import Foundation
import UIKit
import SnapKit

class FeedControllerScreen: UIView {
    
    lazy var header: UIView = {
        let view = UIView()
        
        view.backgroundColor = UIColor(red: 17/255, green: 199/255, blue: 111/255, alpha: 1)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.15
        view.layer.shadowOffset = .zero
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        addSubview(header)
        
        header.snp.makeConstraints { (make) in
            make.left.right.equalTo(self)
            make.height.equalTo(212)
        }
        
        
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
