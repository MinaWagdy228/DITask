//
//  MovieModuleFactory.swift
//  DependencyInjectionDay1And2Tasks
//
//  Created by Mina_Wagdy on 15/06/2026.
//

import UIKit

protocol MovieModuleFactoryProtocol {
    func makeMovieViewController() -> UIViewController
}

class MovieModuleFactory: MovieModuleFactoryProtocol {
    
    private let container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func makeMovieViewController() -> UIViewController {
        return container.resolveMovieViewController()
    }
}
