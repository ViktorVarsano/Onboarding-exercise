//
//  MainNavigationController.swift
//  Onboarding Practice
//
//  Created by Viktor Varsano on 12.01.21.
//

import UIKit

class MainNavigationController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        if isLoggedIn() {
        //assume user is logged in
            let homeController = HomeController()
            present(homeController, animated: true, completion: nil)
                    
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return true
    }
        @objc func showLoginController() {
            let loginController = LoginController()
            present(loginController, animated: true, completion: {
                // perhaps we are going to do something here later
            })
        }
}
class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're logged in"
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: -20, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    
    }
}


