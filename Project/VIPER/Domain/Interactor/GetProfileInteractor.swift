//
//  GetProfileInteractor.swift
//  Project
//
//  Created by Jordi Gámez on 30/10/22.
//

import Foundation

//sourcery: AutoMockable
protocol GetProfileInteractor {
    func execute() async -> Profile
}

class GetProfileInteractorDefault {
    
    private let profileRepository: ProfileRepository
    
    init(profileRepository: ProfileRepository) {
        self.profileRepository = profileRepository
    }
}

extension GetProfileInteractorDefault: GetProfileInteractor {
    
    func execute() async -> Profile {
        let entity = await profileRepository.getProfile()
        let model = ProfileMapper.map(entity)
        return model
    }
}
