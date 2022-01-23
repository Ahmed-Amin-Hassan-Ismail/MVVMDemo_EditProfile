//
//  Profile.swift
//  MVVMDemo_EditProfile
//
//  Created by Ahmed Amin on 23/01/2022.
//

import Foundation

struct Profile {
    var name = "profile"
    var segments = [Segment]()
    var duration: Double = 450.0
    
    init() {
        let segment = Segment(type: .Main)
        self.segments.append(segment)
    }

}
