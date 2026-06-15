//
//  MovieViewModel.swift
//  DependencyInjectionDay1And2Tasks
//
//  Created by Mina_Wagdy on 14/06/2026.
//
import Foundation

class MovieViewModel {
    
    var movies: [Movie] = []
    var onMoviesUpdated: (() -> Void)?
    
    private let fetchMoviesUseCase: FetchMovieUseCaseProtocol
    
    init(fetchMoviesUseCase: FetchMovieUseCaseProtocol) {
        self.fetchMoviesUseCase = fetchMoviesUseCase
    }
    
    func loadMovies() {
        self.movies = fetchMoviesUseCase.execute()
        
        self.onMoviesUpdated?()
    }
}
