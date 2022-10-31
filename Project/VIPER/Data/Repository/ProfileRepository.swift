//
//  ProfileRepository.swift
//  Project
//
//  Created by Jordi Gámez on 31/10/22.
//

import Foundation

//sourcery: AutoMockable
protocol ProfileRepository {
    func getProfile() async -> ProfileEntity
}

class ProfileRepositoryDefault {
    
}

extension ProfileRepositoryDefault: ProfileRepository {
    
    func getProfile() async -> ProfileEntity {
        ProfileEntity(id: "1", name: "Aitana", type: .artist)
    }
}
