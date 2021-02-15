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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.mainPresenterProtocol = MainPresenterController(mainViewProtocol: self)
        
    }
    
}

protocol MainViewProtocol : class {
    //ADD FUNCTIONS
}
