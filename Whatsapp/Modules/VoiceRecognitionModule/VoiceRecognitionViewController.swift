//
//  ViewController.swift
//  Whatsapp
//
//  Created by alumnos on 11/02/2021.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import AVKit


class VoiceRecognitionViewController: UIViewController, AVAudioPlayerDelegate, VoiceRecognitionViewControllerProtocol {
    
    var voiceRecognitionPresenterProtocol : VoiceRecognitionPresenterProtocol?
    
    var longgesture : UILongPressGestureRecognizer?

    var recorder : AVAudioRecorder!
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.voiceRecognitionPresenterProtocol = VoiceRecognitionPresenterController(voiceRecognitionViewProtocol: self)
        
        micButton.setImage(UIImage(named: "Mic Off"), for: .normal)
        
        micButton.addTarget(self, action: #selector(VoiceRecognitionViewController.touchDownEvent), for: .touchDown)
        micButton.addTarget(self, action: #selector(VoiceRecognitionViewController.touchUpEvent), for: [.touchUpInside, .touchUpOutside])

        let file = "recording.wav"
        let directory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let url = directory.first?.appendingPathComponent(file)
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord)
        self.recorder = try! AVAudioRecorder(url: url!, settings: [:])
        
        let leftRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeLeft:")
        leftRecognizer.direction = .left
        self.view.addGestureRecognizer(leftRecognizer)
        
    }
    
    func swipeLeft(recognizer: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "micToVideo", sender: self)
    }

    @IBOutlet weak var micButton: UIButton!
    @IBOutlet weak var textField: UITextView!
    
    @IBAction func resetButton(_ sender: Any) {
    }
    
    @objc func touchDownEvent(_ sender: AnyObject) {
        micButton.setImage(UIImage(named: "Mic"), for: .normal)
        
        //TODO start recording

        self.recorder.prepareToRecord()
        self.recorder.record()
        
        
        
    }

    @objc func touchUpEvent(_ sender: AnyObject) {
        micButton.setImage(UIImage(named: "Mic Off"), for: .normal)
        
        //TODO stop recording
        self.recorder?.stop()
        do {
            let audioPath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent("recording.wav")
            textField.text = audioPath
            let url = NSURL(string: audioPath)
            player = try AVAudioPlayer(contentsOf: url! as URL)
            player.delegate = self
            player.prepareToPlay()
            player.volume = 1.0
            player.play()
            if ((player.isPlaying)){
                self.view.backgroundColor = UIColor.blue
            }
        }catch{
            print("AVAudioPlayer init failed")
        }
    }
}

protocol VoiceRecognitionViewControllerProtocol : class{
    //ADD FUNCTIONS
}
