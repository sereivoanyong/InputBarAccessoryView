//
//  iMessageInputBar.swift
//  Example
//
//  Created by Nathan Tannar on 2018-06-06.
//  Copyright © 2018 Nathan Tannar. All rights reserved.
//

import UIKit
import InputBarAccessoryView

final class iMessageInputBar: InputBarAccessoryView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        inputTextView.textContainerInset = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 36)
        inputTextView.placeholderLabelInsets = UIEdgeInsets(top: 8, left: 20, bottom: 8, right: 36)
        if #available(iOS 13, *) {
            inputTextView.layer.borderColor = UIColor.systemGray2.cgColor
        } else {
            inputTextView.layer.borderColor = UIColor.lightGray.cgColor
        }
        inputTextView.layer.borderWidth = 1.0
        inputTextView.layer.cornerRadius = 16.0
        inputTextView.layer.masksToBounds = true
        inputTextView.scrollIndicatorInsets = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        setRightStackViewWidthConstant(to: 38, animated: false)
        setStackViewItems([sendButtonItem, InputBarButtonItem.fixedSpace(2)], forStack: .right, animated: false)
        sendButtonItem.imageView?.backgroundColor = tintColor
        sendButtonItem.contentEdgeInsets = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        sendButtonItem.overrideSize = CGSize(width: 36, height: 36)
        sendButtonItem.setImage(#imageLiteral(resourceName: "ic_up"), for: .normal)
        sendButtonItem.setTitle(nil, for: .normal)
        sendButtonItem.imageView?.layer.cornerRadius = 16
        sendButtonItem.backgroundColor = .clear
        middleContentViewPadding.right = -38
        separatorLine.isHidden = true
    }
    
}
