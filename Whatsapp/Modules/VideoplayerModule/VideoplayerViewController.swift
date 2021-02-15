//
//  VideoplayerViewController.swift
//  Whatsapp
//
//  Created by user177273 on 2/15/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit

class VideoplayerViewController: UIViewController, VideoplayerViewProtocol {
    
    var videoplayerPresenterProtocol : VideoplayerPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.videoplayerPresenterProtocol = VideoplayerPresenter(videoplayerViewProtocol: self)
    }
    
}

protocol VideoplayerViewProtocol : class {
    //ADD FUNCTIONS
}
