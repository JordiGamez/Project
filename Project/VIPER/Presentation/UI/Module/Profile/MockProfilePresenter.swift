//
//  MockProfilePresenter.swift
//  Project
//
//  Created by Jordi Gámez on 31/10/22.
//

import Foundation

class MockProfilePresenter {
    
    var profile: Profile = Profile(id: "1", name: "Aitna", type: .artist)
}

extension MockProfilePresenter: ProfilePresenter {
    
    func loadProfile() {
        // Intentionally empty
    }
}
