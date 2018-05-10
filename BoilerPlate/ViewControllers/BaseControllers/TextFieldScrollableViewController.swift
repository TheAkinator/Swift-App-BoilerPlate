//
//  TextFieldScrollabeViewController.swift
//  Sol Coletivo
//
//  Created by Yuri Frota on 06/03/18.
//  Copyright © 2018 solColetivo. All rights reserved.
//

import UIKit

protocol KeyboardObserversProtocol {
    func observerKeyboardWillChangeStatus(show:Bool, notification:NSNotification)
}

class TextFieldScrollableViewController: BaseViewController, KeyboardObserversProtocol {
    var mainScrollView: UIScrollView?
    
    var keyboardObserversDelegate: KeyboardObserversProtocol? {
        willSet{
            registerKeyboardObservers()
        }
    }
    
    var keyboardObserversDelegateWithouDismiss:KeyboardObserversProtocol?{
        willSet{
            registerKeyboardObservers()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDismissKeyboardOnTouch()
        self.keyboardObserversDelegate = self

    }
    
    
    // MARK: - Keyboard
    func registerKeyboardObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc dynamic func keyboardWillShow(notification:NSNotification) {
        keyboardObserversDelegate?.observerKeyboardWillChangeStatus(show: true, notification: notification)
    }
    
    @objc dynamic func keyboardWillHide(notification:NSNotification) {
        keyboardObserversDelegate?.observerKeyboardWillChangeStatus(show: false, notification: notification)
    }
    
    func adjustingHeight(show:Bool, notification:NSNotification, scrollableView : UIScrollView, heightInset:CGFloat, completionHandler: (()-> Void)?) {
        
        if show{
            
            if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                var contentInset = scrollableView.contentInset as UIEdgeInsets
                contentInset.bottom = keyboardSize.height + heightInset
                
                scrollableView.contentInset = contentInset
                
            }
            
        } else {
            scrollableView.contentInset = UIEdgeInsets.zero
        }
        
        completionHandler?()
        
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseInOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }

    func observerKeyboardWillChangeStatus(show: Bool, notification: NSNotification) {
        guard let scrollView = mainScrollView else {
            fatalError("You must set the mainScrollView on classes that inherit from TextFieldScrollableViewController")
        }
        adjustingHeight(show: show, notification: notification, scrollableView: scrollView, heightInset: 15, completionHandler: nil)
    }
}
