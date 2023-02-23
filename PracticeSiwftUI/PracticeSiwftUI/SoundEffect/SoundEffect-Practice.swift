//
//  SoundEffect-Practice.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 24/2/23.
//

import SwiftUI
import AVKit

// free audio: https://www.freesoundslibrary.com/

class SoundManeger {
    static let instance = SoundManeger() // singleton class or single instance of class
    
    var player: AVAudioPlayer?
    
    enum soundOption: String {
        case tada
        case badum
    }
    
    func playSound(sound: soundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue , withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error in playing sound. \(error.localizedDescription)")
        }
    }
}

struct SoundEffect_Practice: View {
    let soundManager = SoundManeger.instance
    
    var body: some View {
        VStack(spacing: 29) {
            Button("play sound 1") {
                soundManager.playSound(sound: .tada)
            }
            Button("play sound 2") {
                soundManager.playSound(sound: .badum)
            }
        }
    }
}

struct SoundEffect_Practice_Previews: PreviewProvider {
    static var previews: some View {
        SoundEffect_Practice()
    }
}
