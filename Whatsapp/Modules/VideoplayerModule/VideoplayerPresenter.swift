//
//  VideoplayerViewPresenter.swift
//  Whatsapp
//
//  Created by user177273 on 2/15/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class VideoplayerPresenter: VideoplayerPresenterProtocol {
    
    var videoplayerViewProtocol : VideoplayerViewProtocol
    var view: VideoplayerViewController?
    
    init (videoplayerViewProtocol: VideoplayerViewProtocol){
        self.videoplayerViewProtocol = videoplayerViewProtocol
        self.view = videoplayerViewProtocol as? VideoplayerViewController
    }
    
    func playVideo(from file: String) {
        let file = file
        print("yolo1")
        guard let filePath = Bundle.main.path(forResource: file, ofType: "mp4") else {return}
        let filePathURL = NSURL.fileURL(withPath: filePath)
            
        let player = AVPlayer(url:filePathURL)
        let playerController = AVPlayerViewController()
        playerController.player = player
        print("yolo2")
        self.view?.present(playerController, animated: true) {
            print("yolo3")
            player.play()
        }
               
    }
    
}

protocol VideoplayerPresenterProtocol{
    //ADD FUNCTIONS
    func playVideo(from file: String)
}
