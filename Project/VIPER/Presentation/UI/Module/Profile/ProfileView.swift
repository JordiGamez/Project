//
//  ProfileView.swift
//  Project
//
//  Created by Jordi Gámez on 31/10/22.
//

import SwiftUI

struct ProfileView<Presenter: ProfilePresenter>: View {
    
    @ObservedObject var presenter: Presenter
    
    var body: some View {
        VStack {
            Text(presenter.profile.id)
            Text(presenter.profile.name)
        }
        .foregroundColor(.red)
        .onAppear {
            presenter.loadProfile()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(presenter: MockProfilePresenter())
    }
}
