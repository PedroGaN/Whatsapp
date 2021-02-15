//
//  VideoplayerViewPresenter.swift
//  Whatsapp
//
//  Created by user177273 on 2/15/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit

class VideoplayerPresenter: VideoplayerPresenterProtocol {
    
    var videoplayerViewProtocol : VideoplayerViewProtocol
    var view: VideoplayerViewController?
    
    init (videoplayerViewProtocol: VideoplayerViewProtocol){
        self.videoplayerViewProtocol = videoplayerViewProtocol
        self.view = videoplayerViewProtocol as? VideoplayerViewController
    }
    
}

protocol VideoplayerPresenterProtocol{
    //ADD FUNCTIONS
}
