//
//  ProfileViewModel.swift
//  MVVMDemo_EditProfile
//
//  Created by Ahmed Amin on 23/01/2022.
//

import Foundation


class ProfileViewModel {
    
    private let profile: Profile
    
    init(withProfile profile: Profile) {
        self.profile = profile
    }
    
    func timeForProfile() -> String {
        return self.stringFromTimeInterval(timeInterval: profile.duration)
    }
    
    func numberOfRowsForSegmentType(type: SegmentType) -> Int {
        var result = 1
        
        guard let segment = profile.segmentOfType(type: type) else { return result}
        switch type {
        case .WarmUP:
             result = (segment.enabled) ? 2 : 1
        default:
             result = 1
        }
        return result
    }
    
    func timeForWarmUpSegment() -> String {
        return self.stringFromTimeInterval(timeInterval: profile.segmentOfType(type: .WarmUP)!.duration)
    }
}

//MARK: - Private Methods
extension ProfileViewModel {
    
    
    private func stringFromTimeInterval(timeInterval: Double) -> String {
        
        let timeInterval: Int = Int(timeInterval)
        
        let hours = (timeInterval / 3600)
        let seconds = (timeInterval % 60)
        let minutes = ((timeInterval / 60) % 60)
        
        if hours > 0 {
            return String(format: "%02d:%02d:%02d", hours,minutes,seconds)
        } else {
            return String(format: "%02d:%02d", minutes,seconds)
        }
    }
    
}
