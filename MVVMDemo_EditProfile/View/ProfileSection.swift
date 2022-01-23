//
//  ProfileSection.swift
//  MVVMDemo_EditProfile
//
//  Created by Ahmed Amin on 23/01/2022.
//

import Foundation


//MARK: - Profile Section

enum ProfileSection: Int {
    case Time
    case WarmUP
    case CoolDown
    case Count
    
    static let title = [
        Time: "Time",
        WarmUP: "Warm Up",
        CoolDown: "Cool Down"
    ]
    
    static var count: Int {
        return ProfileSection.Count.rawValue
    }
   
    func sectionTitle() -> String {
        if let sectionTitle = ProfileSection.title[self] {
            return sectionTitle
        } else {
            return ""
        }
    }
}
