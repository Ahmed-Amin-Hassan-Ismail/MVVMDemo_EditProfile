//
//  Sound.swift
//  MVVMDemo_EditProfile
//
//  Created by Ahmed Amin on 23/01/2022.
//

import Foundation


enum SoundType {
    case Repeat
    case Begin
    case End
}

class Sound {
    var enabled: Bool
    var type: SoundType
    var name: String = ""
    var iterations: Int = 0
    var timeInterval: Double = 300


    init(type: SoundType) {
        self.type = type
        self.enabled = true
    }

}

