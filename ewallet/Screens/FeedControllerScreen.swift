//
//  FeedScreen.swift
//  ewallet
//
//  Created by Vitor Leonel on 20/09/20.
//

import Foundation
import UIKit
import SnapKit

protocol FeedControllerScreenProtocol: UIView {
    var avatarImage: UIImage? { get set }
    
    func setBalance(_ text: String)
}

class FeedControllerScreen: UIView {
    
    lazy var header: UIView = {
        let _header = UIView()
        
        _header.backgroundColor = UIColor(red: 17/255, green: 199/255, blue: 111/255, alpha: 1)
        _header.layer.shadowColor = UIColor.black.cgColor
        _header.layer.shadowOpacity = 0.2
        _header.layer.shadowOffset = .zero
        _header.addSubview(content)
        
        return _header
    }()
    
    lazy var content: UIView = {
        let _content = UIView()
        
        _content.addSubview(avatar)
        _content.addSubview(title)
        _content.addSubview(divider)
        _content.addSubview(balance)
        
        return _content
    }()
    
    lazy var avatar: UIImageView = {
        let _avatar = UIImageView()
        
        _avatar.backgroundColor = .white
        _avatar.layer.cornerRadius = 20
        _avatar.layer.borderWidth = 1
        _avatar.layer.borderColor = UIColor(red: 11/255, green: 232/255, blue: 129/255, alpha: 1).cgColor
        _avatar.layer.masksToBounds = true
    
        
        return _avatar
    }()
    
    lazy var title: UILabel = {
        let _title = UILabel()
        
        _title.text = "Wallet"
        _title.textColor = .white
        _title.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        return _title
    }()
    
    lazy var divider: UIView = {
        let _divider = UIView()
        
        _divider.layer.borderWidth = 1
        _divider.layer.borderColor = UIColor(red: 11/255, green: 232/255, blue: 129/255, alpha: 0.5).cgColor
        
        return _divider
    }()
    
    lazy var balance: UIView = {
        let _balance = UIView();
        
        _balance.addSubview(balanceLabel)
        _balance.addSubview(balanceValue)
        _balance.addSubview(balanceValueToggle)
        
        return _balance;
    }()
    
    lazy var balanceLabel: UILabel = {
        let _balanceLabel = UILabel()
        
        _balanceLabel.text = "Balance:"
        _balanceLabel.textColor = .white
        _balanceLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        return _balanceLabel
    }()
    
    lazy var balanceValue: UILabel = {
        let _balanceValue = UILabel()
        
        _balanceValue.textColor = .white
        _balanceValue.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        
        return _balanceValue
    }()
    
    lazy var balanceValueToggle: UIButton = {
        let _balanceValueToggle = UIButton()
        let _balanceValueToggleImage = UIImage(systemName: "eye.slash.fill")
        
        _balanceValueToggle.setImage(_balanceValueToggleImage, for: .normal)
        _balanceValueToggle.tintColor = .white
        
        return _balanceValueToggle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        self.addSubview(header)
        
        header.snp.makeConstraints { (make) in
            make.left.right.equalTo(self)
            make.bottom.equalTo(content)
        }
        
        content.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(16)
            make.bottom.equalTo(balance.snp.bottom)
        }
        
        avatar.snp.makeConstraints { (make) in
            make.width.height.equalTo(40)
            make.top.equalTo(16)
        }
        
        title.snp.makeConstraints { (make) in
            make.left.equalTo(avatar.snp.right).offset(16)
            make.centerY.equalTo(avatar.snp.centerY)
        }
        
        divider.snp.makeConstraints { (make) in
            make.width.equalToSuperview().inset(16)
            make.height.equalTo(1)
            make.top.equalTo(balance.snp.top)
        }
        
        balance.snp.makeConstraints { (make) in
            make.width.equalToSuperview().inset(16)
            make.top.equalTo(avatar.snp.bottom).offset(16)
            make.bottom.equalTo(balanceLabel.snp.bottom).offset(16)
        }
        
        balanceLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        balanceValue.snp.makeConstraints { (make) in
            make.left.equalTo(balanceLabel.snp.right).offset(6)
            make.centerY.equalTo(balanceLabel)
        }
        
        balanceValueToggle.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension FeedControllerScreen: FeedControllerScreenProtocol {
    var avatarImage: UIImage? {
        get {
            return avatar.image
        }
        
        set {
            avatar.image = newValue
        }
    }
    
    func setBalance(_ text: String) {
        balanceValue.text = text
    }
}
