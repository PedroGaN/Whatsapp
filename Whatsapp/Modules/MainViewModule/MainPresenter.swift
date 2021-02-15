//
//  MainViewPresenter.swift
//  Whatsapp
//
//  Created by user177273 on 2/15/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit

class MainPresenterController: MainPresenterProtocol{
    
    var mainViewProtocol : MainViewProtocol
    var view : MainViewController?

    
    init (mainViewProtocol: MainViewProtocol){
        self.mainViewProtocol = mainViewProtocol
        self.view = mainViewProtocol as? MainViewController
    }
    
}

protocol MainPresenterProtocol{
    //ADD FUNCTIONS
}
