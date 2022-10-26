//
//  File.swift
//  RescueMiniGame
//
//  Created by Devina Ranlyca on 23/04/22.
//

import AVFoundation

class AudioContainer{
    static var sharedContainer = AudioContainer()
    
    private var backgroundAudioPlayer: AVAudioPlayer!
    private var soundEffectPlayer: AVAudioPlayer!
    private var audioList = [
        
        "music": Bundle.main.url(forResource: "background-music", withExtension: "mp3"),
        
        "button": Bundle.main.url(forResource: "button-soundeffect", withExtension: "mp3"),
        
        "correct":Bundle.main.url(forResource: "correct-soundeffect", withExtension: "mp3"),
        "wrong":Bundle.main.url(forResource: "wrong-soundeffect", withExtension: "mp3")
        
    ]
    
    func playBackgroundMusic() -> Void {
        if let url = audioList["music"] {
            try? backgroundAudioPlayer = AVAudioPlayer(contentsOf: url!)
            backgroundAudioPlayer.numberOfLoops = -1
            backgroundAudioPlayer.setVolume(0.25, fadeDuration: 2)
            backgroundAudioPlayer.play()
        }
    }
    
    
    func playSoundEffect(for sound: String) -> Void {
        if let url = audioList[sound] {
            try? soundEffectPlayer = AVAudioPlayer(contentsOf: url!)
            soundEffectPlayer.play()
        }
    }
    
    
}

