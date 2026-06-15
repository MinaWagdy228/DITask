//
//  FetchMovieUseCase.swift
//  DependencyInjectionDay1And2Tasks
//
//  Created by Mina_Wagdy on 14/06/2026.
//

import Foundation

protocol FetchMovieUseCaseProtocol {
    func execute() -> [Movie]
}

class FetchMovieUseCase: FetchMovieUseCaseProtocol {
    private var movieServie: MovieServiceProtocol

    init(movieServie: MovieServiceProtocol) {
        self.movieServie = movieServie
    }
    func execute() -> [Movie] {
        movieServie.fetchMovies()
    }

}
