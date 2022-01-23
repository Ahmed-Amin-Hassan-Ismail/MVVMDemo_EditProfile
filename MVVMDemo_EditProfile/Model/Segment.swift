//
//  Segment.swift
//  MVVMDemo_EditProfile
//
//  Created by Ahmed Amin on 23/01/2022.
//

import Foundation


enum SegmentType {
    case Main
    case WarmUP
    case CoolDown
}


struct Segment {
    var enabled: Bool
    var type: SegmentType
    var sounds = [Sound]()
    var duration: Double = 300
    
    init(type: SegmentType) {
        self.type = type
        self.enabled = true
    }
    
}
