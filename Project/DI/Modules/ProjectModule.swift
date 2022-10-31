
import Foundation
import Swinject

class ProjectModule: InjectorModule {
    
    override func configure(_ container: Container) {
        configureProfile(container)
    }
    
    private func configureProfile(_ container: Container) {
        container.register(ProfileRepository.self) { resolver in
            return ProfileRepositoryDefault()
        }
        
        container.register(GetProfileInteractor.self) { resolver in
            let profileRepository = resolver.resolve(ProfileRepository.self)!
            return GetProfileInteractorDefault(profileRepository: profileRepository)
        }
    }
}
