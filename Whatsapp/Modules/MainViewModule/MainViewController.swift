//
//  File.swift
//  Whatsapp
//
//  Created by user177273 on 2/15/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, MainViewProtocol {

    var mainPresenterProtocol : MainPresenterProtocol?
    
    var rightRecognizer: UISwipeGestureRecognizer?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.mainPresenterProtocol = MainPresenterController(mainViewProtocol: self)
        
        self.imageView.image = UIImage(named: "placeholder")
        
        rightRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeRight")

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        rightRecognizer?.direction = .right
        self.view.addGestureRecognizer(rightRecognizer!)
    }
    
    func swipeRight(recognizer: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "videoSegue", sender: self)
    }
    
}

protocol MainViewProtocol : class {
    //ADD FUNCTIONS
}
