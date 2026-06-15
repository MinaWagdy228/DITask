//
//  DIContainer.swift
//  DependencyInjectionDay1And2Tasks
//
//  Created by Mina_Wagdy on 14/06/2026.
//
import Foundation

class DIContainer {
    static let shared = DIContainer()
    private init() {}

    func resolveMovieService() -> MovieServiceProtocol {
        return MovieService()
    }

    func resolveFetchMovieUseCase() -> FetchMovieUseCaseProtocol {
        let service = resolveMovieService()
        return FetchMovieUseCase(movieServie: service)
    }

    func resolveMovieViewModel() -> MovieViewModel {
        let useCase = resolveFetchMovieUseCase()
        return MovieViewModel(fetchMoviesUseCase: useCase)
    }
    func resolveMovieViewController() -> MovieViewController {
        let viewModel = resolveMovieViewModel()
        return MovieViewController(viewModel: viewModel)
    }
}
