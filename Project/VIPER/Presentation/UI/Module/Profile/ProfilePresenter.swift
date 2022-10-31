//
//  ProfilePresenter.swift
//  Project
//
//  Created by Jordi Gámez on 31/10/22.
//

import Foundation

protocol ProfilePresenter: ObservableObject {
    var profile: Profile { get set }
    
    func loadProfile()
}

class ProfilePresenterDefault {
    
    @Published var profile: Profile = Profile.empty()
    
    private let getProfileInteractor: GetProfileInteractor
    private let profileRouter: ProfileRouter
    
    init(getProfileInteractor: GetProfileInteractor,
         profileRouter: ProfileRouter) {
        self.getProfileInteractor = getProfileInteractor
        self.profileRouter = profileRouter
    }
}

extension ProfilePresenterDefault: ProfilePresenter {
    
    @MainActor
    func loadProfile() {
        Task {
            profile = await getProfileInteractor.execute()
        }
    }
}
