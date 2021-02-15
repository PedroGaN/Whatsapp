//
//  VoiceRecognitionPresenter.swift
//  Whatsapp
//
//  Created by user177273 on 2/15/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import AVKit

class VoiceRecognitionPresenterController: VoiceRecognitionPresenterProtocol {
        
    var voiceRecognitionViewProtocol : VoiceRecognitionViewControllerProtocol
    var view : VoiceRecognitionViewController?
    
    init (voiceRecognitionViewProtocol: VoiceRecognitionViewControllerProtocol){
        self.voiceRecognitionViewProtocol = voiceRecognitionViewProtocol
        self.view = voiceRecognitionViewProtocol as? VoiceRecognitionViewController
    }

}

protocol VoiceRecognitionPresenterProtocol{
    //ADD FUNCTIONS
}
