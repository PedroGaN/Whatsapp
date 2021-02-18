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
        
        let leftRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeLeft:")
        leftRecognizer.direction = .left
        self.view.addGestureRecognizer(leftRecognizer)
        
        let rightRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeRight:")
        rightRecognizer.direction = .right
        self.view.addGestureRecognizer(rightRecognizer)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        playVideo()
    }
    
    func playVideo(){
        self.videoplayerPresenterProtocol?.playVideo(from: "videoplayback")
    }
    func swipeLeft(recognizer: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "videoToImage", sender: self)
    }
    func swipeRight(recognizer: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "micSegue", sender: self)
    }
    
}



protocol VideoplayerViewProtocol : class {
    //ADD FUNCTIONS
}
