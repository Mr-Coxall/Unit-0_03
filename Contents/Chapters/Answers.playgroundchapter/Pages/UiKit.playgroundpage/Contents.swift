// Created on: Jan-2017
// Created by: Mr. Coxall
// Created for: ICS3U
// This program is the UIKit solution for the Hello, World! program with button

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var helloWorldLabel : UILabel!
    var helloWorldButton : UIButton!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        helloWorldButton = UIButton()
        helloWorldButton.setTitle("Click me", for: .normal)
        helloWorldButton.setTitleColor(.blue, for: .normal)
        helloWorldButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(helloWorldButton)
        helloWorldButton.translatesAutoresizingMaskIntoConstraints = false
        helloWorldButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        helloWorldButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        helloWorldLabel = UILabel()
        //helloWorldLabel.text = "Hello, World!"
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: helloWorldButton.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    func showText() {
        // show Hello, World!
        helloWorldLabel.text = "Hello, World!"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()